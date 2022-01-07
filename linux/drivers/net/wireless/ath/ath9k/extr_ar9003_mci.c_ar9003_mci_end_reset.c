
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {scalar_t__ bt_state; int ready; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath9k_hw_cal_data {int cal_flags; } ;
struct ath9k_channel {int dummy; } ;


 int AR_MCI_INTERRUPT_RX_MSG_RAW ;
 int AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET ;
 int AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE ;
 int AR_PHY_TIMING4 ;
 int AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT ;
 int EIO ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ MCI_BT_AWAKE ;
 scalar_t__ MCI_BT_SLEEP ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int RTT_DONE ;
 int TXCLCAL_DONE ;
 int TXIQCAL_DONE ;
 int ar9003_mci_check_int (struct ath_hw*,int) ;
 int ar9003_mci_enable_interrupt (struct ath_hw*) ;
 int ar9003_mci_remote_reset (struct ath_hw*,int) ;
 int ar9003_mci_send_lna_transfer (struct ath_hw*,int) ;
 int ar9003_mci_send_sys_waking (struct ath_hw*,int) ;
 int ath9k_hw_init_cal (struct ath_hw*,struct ath9k_channel*) ;
 int clear_bit (int ,int *) ;
 int udelay (int) ;

int ar9003_mci_end_reset(struct ath_hw *ah, struct ath9k_channel *chan,
    struct ath9k_hw_cal_data *caldata)
{
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;

 if (!mci_hw->ready)
  return 0;

 if (!IS_CHAN_2GHZ(chan) || (mci_hw->bt_state != MCI_BT_SLEEP))
  goto exit;

 if (!ar9003_mci_check_int(ah, AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET) &&
     !ar9003_mci_check_int(ah, AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE))
  goto exit;







 REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
    (AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET |
     AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE));

 ar9003_mci_remote_reset(ah, 1);
 ar9003_mci_send_sys_waking(ah, 1);
 udelay(1);

 if (IS_CHAN_2GHZ(chan))
  ar9003_mci_send_lna_transfer(ah, 1);

 mci_hw->bt_state = MCI_BT_AWAKE;

 REG_CLR_BIT(ah, AR_PHY_TIMING4,
      1 << AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT);

 if (caldata) {
  clear_bit(TXIQCAL_DONE, &caldata->cal_flags);
  clear_bit(TXCLCAL_DONE, &caldata->cal_flags);
  clear_bit(RTT_DONE, &caldata->cal_flags);
 }

 if (!ath9k_hw_init_cal(ah, chan))
  return -EIO;

 REG_SET_BIT(ah, AR_PHY_TIMING4,
      1 << AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT);

exit:
 ar9003_mci_enable_interrupt(ah);
 return 0;
}
