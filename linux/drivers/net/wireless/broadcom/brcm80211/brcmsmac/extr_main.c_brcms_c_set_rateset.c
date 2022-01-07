
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcms_c_rateset {scalar_t__ count; int * mcs; int rates; } ;
struct brcms_c_info {struct brcms_bss_info* default_bss; TYPE_2__* bsscfg; TYPE_1__* pub; } ;
struct TYPE_6__ {int * mcs; } ;
struct brcms_bss_info {TYPE_3__ rateset; } ;
struct brcm_rateset {scalar_t__ count; int rates; } ;
typedef int internal_rs ;
struct TYPE_5__ {struct brcms_bss_info* current_bss; } ;
struct TYPE_4__ {int _n_enab; scalar_t__ associated; } ;


 scalar_t__ BRCMS_NUMRATES ;
 int ENOBUFS ;
 scalar_t__ MCSSET_LEN ;
 int SUPPORT_11N ;
 int brcms_c_ofdm_rateset_war (struct brcms_c_info*) ;
 int brcms_c_set_internal_rateset (struct brcms_c_info*,struct brcms_c_rateset*) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (struct brcms_c_rateset*,int ,int) ;

int brcms_c_set_rateset(struct brcms_c_info *wlc, struct brcm_rateset *rs)
{
 struct brcms_c_rateset internal_rs;
 int bcmerror;

 if (rs->count > BRCMS_NUMRATES)
  return -ENOBUFS;

 memset(&internal_rs, 0, sizeof(internal_rs));


 internal_rs.count = rs->count;
 memcpy(&internal_rs.rates, &rs->rates, internal_rs.count);


 if (wlc->pub->_n_enab & SUPPORT_11N) {
  struct brcms_bss_info *mcsset_bss;
  if (wlc->pub->associated)
   mcsset_bss = wlc->bsscfg->current_bss;
  else
   mcsset_bss = wlc->default_bss;
  memcpy(internal_rs.mcs, &mcsset_bss->rateset.mcs[0],
         MCSSET_LEN);
 }

 bcmerror = brcms_c_set_internal_rateset(wlc, &internal_rs);
 if (!bcmerror)
  brcms_c_ofdm_rateset_war(wlc);

 return bcmerror;
}
