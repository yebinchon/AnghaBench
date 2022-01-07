
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_chainmask; } ;
struct ath_hw {TYPE_2__* caldata; TYPE_1__ caps; } ;
struct TYPE_4__ {int cal_flags; int ** rtt_table; } ;


 int AR9300_MAX_CHAINS ;
 int CALIBRATE ;
 int MAX_RTT_TABLE_ENTRY ;
 int RTT_DONE ;
 int ar9003_hw_patch_rtt (struct ath_hw*,int,int) ;
 int ar9003_hw_rtt_fill_hist_entry (struct ath_hw*,int,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int,int,int ) ;
 int set_bit (int ,int *) ;

void ar9003_hw_rtt_fill_hist(struct ath_hw *ah)
{
 int chain, i;

 for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
  if (!(ah->caps.rx_chainmask & (1 << chain)))
   continue;
  for (i = 0; i < MAX_RTT_TABLE_ENTRY; i++) {
   ah->caldata->rtt_table[chain][i] =
    ar9003_hw_rtt_fill_hist_entry(ah, chain, i);

   ar9003_hw_patch_rtt(ah, i, chain);

   ath_dbg(ath9k_hw_common(ah), CALIBRATE,
    "RTT value at idx %d, chain %d is: 0x%x\n",
    i, chain, ah->caldata->rtt_table[chain][i]);
  }
 }

 set_bit(RTT_DONE, &ah->caldata->cal_flags);
}
