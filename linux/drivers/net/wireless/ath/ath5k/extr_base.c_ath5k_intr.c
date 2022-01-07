
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int toggleq; } ;
struct TYPE_3__ {int mib_intr; int rxeol_intr; int rxorn_intr; } ;
struct ath5k_hw {scalar_t__ ah_mac_srev; scalar_t__ tx_pending; scalar_t__ rx_pending; TYPE_2__ rf_kill; TYPE_1__ stats; int beacontq; int reset_work; int hw; int imask; int status; } ;
typedef int irqreturn_t ;
typedef enum ath5k_int { ____Placeholder_ath5k_int } ath5k_int ;


 int AR5K_INT_FATAL ;
 int AR5K_INT_GPIO ;
 int AR5K_INT_MIB ;
 int AR5K_INT_RXEOL ;
 int AR5K_INT_RXERR ;
 int AR5K_INT_RXOK ;
 int AR5K_INT_RXORN ;
 int AR5K_INT_SWBA ;
 int AR5K_INT_TXDESC ;
 int AR5K_INT_TXEOL ;
 int AR5K_INT_TXERR ;
 int AR5K_INT_TXOK ;
 int AR5K_INT_TXURN ;
 scalar_t__ AR5K_SREV_AR5212 ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,...) ;
 int ATH5K_DEBUG_INTR ;
 int ATH5K_DEBUG_RESET ;
 int ATH5K_WARN (struct ath5k_hw*,char*) ;
 scalar_t__ ATH_AHB ;
 int ATH_STAT_INVALID ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ath5k_ani_mib_intr (struct ath5k_hw*) ;
 scalar_t__ ath5k_get_bus_type (struct ath5k_hw*) ;
 int ath5k_hw_get_isr (struct ath5k_hw*,int*) ;
 scalar_t__ ath5k_hw_is_intr_pending (struct ath5k_hw*) ;
 int ath5k_hw_update_mib_counters (struct ath5k_hw*) ;
 int ath5k_hw_update_tx_triglevel (struct ath5k_hw*,int) ;
 int ath5k_intr_calibration_poll (struct ath5k_hw*) ;
 int ath5k_schedule_rx (struct ath5k_hw*) ;
 int ath5k_schedule_tx (struct ath5k_hw*) ;
 int ath5k_set_current_imask (struct ath5k_hw*) ;
 int ieee80211_queue_work (int ,int *) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
ath5k_intr(int irq, void *dev_id)
{
 struct ath5k_hw *ah = dev_id;
 enum ath5k_int status;
 unsigned int counter = 1000;
 if (unlikely(test_bit(ATH_STAT_INVALID, ah->status) ||
   ((ath5k_get_bus_type(ah) != ATH_AHB) &&
   !ath5k_hw_is_intr_pending(ah))))
  return IRQ_NONE;


 do {
  ath5k_hw_get_isr(ah, &status);

  ATH5K_DBG(ah, ATH5K_DEBUG_INTR, "status 0x%x/0x%x\n",
    status, ah->imask);
  if (unlikely(status & AR5K_INT_FATAL)) {

   ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
      "fatal int, resetting\n");
   ieee80211_queue_work(ah->hw, &ah->reset_work);
  } else if (unlikely(status & AR5K_INT_RXORN)) {







   ah->stats.rxorn_intr++;

   if (ah->ah_mac_srev < AR5K_SREV_AR5212) {
    ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
       "rx overrun, resetting\n");
    ieee80211_queue_work(ah->hw, &ah->reset_work);
   } else
    ath5k_schedule_rx(ah);

  } else {


   if (status & AR5K_INT_SWBA)
    tasklet_hi_schedule(&ah->beacontq);
   if (status & AR5K_INT_RXEOL)
    ah->stats.rxeol_intr++;



   if (status & AR5K_INT_TXURN)
    ath5k_hw_update_tx_triglevel(ah, 1);


   if (status & (AR5K_INT_RXOK | AR5K_INT_RXERR))
    ath5k_schedule_rx(ah);


   if (status & (AR5K_INT_TXOK
     | AR5K_INT_TXDESC
     | AR5K_INT_TXERR
     | AR5K_INT_TXEOL))
    ath5k_schedule_tx(ah);






   if (status & AR5K_INT_MIB) {
    ah->stats.mib_intr++;
    ath5k_hw_update_mib_counters(ah);
    ath5k_ani_mib_intr(ah);
   }


   if (status & AR5K_INT_GPIO)
    tasklet_schedule(&ah->rf_kill.toggleq);

  }

  if (ath5k_get_bus_type(ah) == ATH_AHB)
   break;

 } while (ath5k_hw_is_intr_pending(ah) && --counter > 0);







 if (ah->rx_pending || ah->tx_pending)
  ath5k_set_current_imask(ah);

 if (unlikely(!counter))
  ATH5K_WARN(ah, "too many interrupts, giving up for now\n");


 ath5k_intr_calibration_poll(ah);

 return IRQ_HANDLED;
}
