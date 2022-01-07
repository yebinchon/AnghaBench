
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int q_tx_num; } ;
struct TYPE_4__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_bwmode; int ah_coverage_class; TYPE_2__ ah_capabilities; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_BWMODE_40MHZ ;
 int AR5K_DCU_GBL_IFS_MISC ;
 int AR5K_DCU_GBL_IFS_MISC_TURBO_MODE ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int ATH5K_ERR (struct ath5k_hw*,char*,int) ;
 unsigned int ath5k_hw_get_default_slottime (struct ath5k_hw*) ;
 int ath5k_hw_reset_tx_queue (struct ath5k_hw*,int) ;
 int ath5k_hw_set_ifs_intervals (struct ath5k_hw*,unsigned int) ;
 int ath5k_hw_set_tx_retry_limits (struct ath5k_hw*,int ) ;

int
ath5k_hw_init_queues(struct ath5k_hw *ah)
{
 int i, ret;
 if (ah->ah_version != AR5K_AR5210)
  for (i = 0; i < ah->ah_capabilities.cap_queues.q_tx_num; i++) {
   ret = ath5k_hw_reset_tx_queue(ah, i);
   if (ret) {
    ATH5K_ERR(ah,
     "failed to reset TX queue #%d\n", i);
    return ret;
   }
  }
 else



  ath5k_hw_set_tx_retry_limits(ah, 0);


 if (ah->ah_bwmode == AR5K_BWMODE_40MHZ)
  AR5K_REG_ENABLE_BITS(ah, AR5K_DCU_GBL_IFS_MISC,
    AR5K_DCU_GBL_IFS_MISC_TURBO_MODE);




 if (!ah->ah_coverage_class) {
  unsigned int slot_time = ath5k_hw_get_default_slottime(ah);
  ath5k_hw_set_ifs_intervals(ah, slot_time);
 }

 return 0;
}
