
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx_chainmask; } ;
struct ath_hw {TYPE_1__* caldata; TYPE_2__ caps; } ;
struct TYPE_3__ {int ** rtt_table; } ;


 int AR9300_MAX_CHAINS ;
 int CALIBRATE ;
 int MAX_RTT_TABLE_ENTRY ;
 int ar9003_hw_rtt_load_hist_entry (struct ath_hw*,int,int,int ) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int,int,int ) ;

void ar9003_hw_rtt_load_hist(struct ath_hw *ah)
{
 int chain, i;

 for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
  if (!(ah->caps.rx_chainmask & (1 << chain)))
   continue;
  for (i = 0; i < MAX_RTT_TABLE_ENTRY; i++) {
   ar9003_hw_rtt_load_hist_entry(ah, chain, i,
           ah->caldata->rtt_table[chain][i]);
   ath_dbg(ath9k_hw_common(ah), CALIBRATE,
    "Load RTT value at idx %d, chain %d: 0x%x\n",
    i, chain, ah->caldata->rtt_table[chain][i]);
  }
 }
}
