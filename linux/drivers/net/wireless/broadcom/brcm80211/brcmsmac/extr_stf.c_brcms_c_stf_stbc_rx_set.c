
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* stf; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int rxstreams; } ;


 scalar_t__ BRCMS_STF_SS_STBC_RX (struct brcms_c_info*) ;
 scalar_t__ HT_CAP_RX_STBC_NO ;
 scalar_t__ HT_CAP_RX_STBC_ONE_STREAM ;
 int brcms_c_stf_stbc_rx_ht_update (struct brcms_c_info*,scalar_t__) ;

bool brcms_c_stf_stbc_rx_set(struct brcms_c_info *wlc, s32 int_val)
{
 if ((int_val != HT_CAP_RX_STBC_NO)
     && (int_val != HT_CAP_RX_STBC_ONE_STREAM))
  return 0;

 if (BRCMS_STF_SS_STBC_RX(wlc)) {
  if ((int_val != HT_CAP_RX_STBC_NO)
      && (wlc->stf->rxstreams == 1))
   return 0;
 }

 brcms_c_stf_stbc_rx_ht_update(wlc, int_val);
 return 1;
}
