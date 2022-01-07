
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_chainmask; } ;
struct ath_hw {TYPE_2__* caldata; TYPE_1__ caps; } ;
struct TYPE_4__ {int cal_flags; } ;


 int AR9300_MAX_CHAINS ;
 int MAX_RTT_TABLE_ENTRY ;
 int RTT_DONE ;
 int ar9003_hw_rtt_load_hist_entry (struct ath_hw*,int,int,int ) ;
 int clear_bit (int ,int *) ;

void ar9003_hw_rtt_clear_hist(struct ath_hw *ah)
{
 int chain, i;

 for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
  if (!(ah->caps.rx_chainmask & (1 << chain)))
   continue;
  for (i = 0; i < MAX_RTT_TABLE_ENTRY; i++)
   ar9003_hw_rtt_load_hist_entry(ah, chain, i, 0);
 }

 if (ah->caldata)
  clear_bit(RTT_DONE, &ah->caldata->cal_flags);
}
