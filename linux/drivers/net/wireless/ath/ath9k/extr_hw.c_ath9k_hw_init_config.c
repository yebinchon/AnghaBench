
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma_beacon_response_time; int sw_beacon_response_time; int cwm_ignore_extcca; int analog_shiftreg; int rx_intr_mitigation; int rimt_last; int rimt_first; int pll_pwrsave; scalar_t__ serialize_regmode; int max_txtrig_level; } ;
struct TYPE_3__ {scalar_t__ macVersion; } ;
struct ath_hw {TYPE_2__ config; int is_pciexpress; TYPE_1__ hw_version; } ;
struct ath_common {int dummy; } ;


 scalar_t__ AR_SREV_9160 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 scalar_t__ AR_SREV_VERSION_5416_PCI ;
 int MAX_TX_FIFO_THRESHOLD ;
 int NR_CPUS ;
 int RESET ;
 scalar_t__ SER_REG_MODE_AUTO ;
 scalar_t__ SER_REG_MODE_OFF ;
 scalar_t__ SER_REG_MODE_ON ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__) ;
 int num_possible_cpus () ;

__attribute__((used)) static void ath9k_hw_init_config(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 ah->config.dma_beacon_response_time = 1;
 ah->config.sw_beacon_response_time = 6;
 ah->config.cwm_ignore_extcca = 0;
 ah->config.analog_shiftreg = 1;

 ah->config.rx_intr_mitigation = 1;

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  ah->config.rimt_last = 500;
  ah->config.rimt_first = 2000;
 } else {
  ah->config.rimt_last = 250;
  ah->config.rimt_first = 700;
 }

 if (AR_SREV_9462(ah) || AR_SREV_9565(ah))
  ah->config.pll_pwrsave = 7;
 if (num_possible_cpus() > 1)
  ah->config.serialize_regmode = SER_REG_MODE_AUTO;

 if (NR_CPUS > 1 && ah->config.serialize_regmode == SER_REG_MODE_AUTO) {
  if (ah->hw_version.macVersion == AR_SREV_VERSION_5416_PCI ||
      ((AR_SREV_9160(ah) || AR_SREV_9280(ah) || AR_SREV_9287(ah)) &&
       !ah->is_pciexpress)) {
   ah->config.serialize_regmode = SER_REG_MODE_ON;
  } else {
   ah->config.serialize_regmode = SER_REG_MODE_OFF;
  }
 }

 ath_dbg(common, RESET, "serialize_regmode is %d\n",
  ah->config.serialize_regmode);

 if (AR_SREV_9285(ah) || AR_SREV_9271(ah))
  ah->config.max_txtrig_level = MAX_TX_FIFO_THRESHOLD >> 1;
 else
  ah->config.max_txtrig_level = MAX_TX_FIFO_THRESHOLD;
}
