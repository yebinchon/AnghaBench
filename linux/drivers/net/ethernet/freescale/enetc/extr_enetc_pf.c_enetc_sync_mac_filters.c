
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct enetc_si {TYPE_1__* pdev; } ;
struct enetc_pf {struct enetc_si* si; struct enetc_mac_filter* mac_filter; } ;
struct enetc_mac_filter {int mac_addr_cnt; scalar_t__ mac_hash_table; int mac_addr; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int ) ;
 int EMETC_MAC_ADDR_FILT_RES ;
 int MADDR_TYPE ;
 int UC ;
 int dev_warn (int *,char*,int) ;
 int enetc_clear_mac_flt_entry (struct enetc_si*,int) ;
 int enetc_clear_mac_ht_flt (struct enetc_si*,int ,int) ;
 int enetc_set_mac_flt_entry (struct enetc_si*,int,int ,int ) ;
 int enetc_set_mac_ht_flt (struct enetc_si*,int ,int,int *) ;

__attribute__((used)) static void enetc_sync_mac_filters(struct enetc_pf *pf)
{
 struct enetc_mac_filter *f = pf->mac_filter;
 struct enetc_si *si = pf->si;
 int i, pos;

 pos = EMETC_MAC_ADDR_FILT_RES;

 for (i = 0; i < MADDR_TYPE; i++, f++) {
  bool em = (f->mac_addr_cnt == 1) && (i == UC);
  bool clear = !f->mac_addr_cnt;

  if (clear) {
   if (i == UC)
    enetc_clear_mac_flt_entry(si, pos);

   enetc_clear_mac_ht_flt(si, 0, i);
   continue;
  }


  if (em) {
   int err;

   enetc_clear_mac_ht_flt(si, 0, UC);

   err = enetc_set_mac_flt_entry(si, pos, f->mac_addr,
            BIT(0));
   if (!err)
    continue;


   dev_warn(&si->pdev->dev, "fallback to HT filt (%d)\n",
     err);
  }


  if (i == UC)
   enetc_clear_mac_flt_entry(si, pos);

  enetc_set_mac_ht_flt(si, 0, i, (u32 *)f->mac_hash_table);
 }
}
