
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_si {int errata; int hw; } ;


 int ENETC_ERR_UCMCSWP ;
 int ENETC_PSIMMHFR0 (int,int) ;
 int ENETC_PSIMMHFR1 (int) ;
 int ENETC_PSIUMHFR0 (int,int) ;
 int ENETC_PSIUMHFR1 (int) ;
 int UC ;
 int enetc_port_wr (int *,int ,int ) ;

__attribute__((used)) static void enetc_set_mac_ht_flt(struct enetc_si *si, int si_idx, int type,
     u32 *hash)
{
 bool err = si->errata & ENETC_ERR_UCMCSWP;

 if (type == UC) {
  enetc_port_wr(&si->hw, ENETC_PSIUMHFR0(si_idx, err), *hash);
  enetc_port_wr(&si->hw, ENETC_PSIUMHFR1(si_idx), *(hash + 1));
 } else {
  enetc_port_wr(&si->hw, ENETC_PSIMMHFR0(si_idx, err), *hash);
  enetc_port_wr(&si->hw, ENETC_PSIMMHFR1(si_idx), *(hash + 1));
 }
}
