
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int bcn_li_dtim; int bcn_li_bcn; int hw; } ;


 int M_BCN_LI ;
 int brcms_b_write_shm (int ,int ,int) ;

__attribute__((used)) static void brcms_c_bcn_li_upd(struct brcms_c_info *wlc)
{

 if (wlc->bcn_li_dtim == 1)
  brcms_b_write_shm(wlc->hw, M_BCN_LI, 0);
 else
  brcms_b_write_shm(wlc->hw, M_BCN_LI,
         (wlc->bcn_li_dtim << 8) | wlc->bcn_li_bcn);
}
