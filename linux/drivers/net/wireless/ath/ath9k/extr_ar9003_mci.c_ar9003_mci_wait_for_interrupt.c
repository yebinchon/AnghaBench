
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AR_MCI_INTERRUPT_RAW ;
 int AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE ;
 int AR_MCI_INTERRUPT_RX_MSG ;
 int AR_MCI_INTERRUPT_RX_MSG_RAW ;
 int AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE ;
 int AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING ;
 int AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING ;
 int MCI ;
 int REG_READ (struct ath_hw*,int) ;
 int REG_WRITE (struct ath_hw*,int,int) ;
 int ar9003_mci_reset_req_wakeup (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int ar9003_mci_wait_for_interrupt(struct ath_hw *ah, u32 address,
     u32 bit_position, int time_out)
{
 struct ath_common *common = ath9k_hw_common(ah);

 while (time_out) {
  if (!(REG_READ(ah, address) & bit_position)) {
   udelay(10);
   time_out -= 10;

   if (time_out < 0)
    break;
   else
    continue;
  }
  REG_WRITE(ah, address, bit_position);

  if (address != AR_MCI_INTERRUPT_RX_MSG_RAW)
   break;

  if (bit_position & AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE)
   ar9003_mci_reset_req_wakeup(ah);

  if (bit_position & (AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING |
        AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING))
   REG_WRITE(ah, AR_MCI_INTERRUPT_RAW,
      AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE);

  REG_WRITE(ah, AR_MCI_INTERRUPT_RAW, AR_MCI_INTERRUPT_RX_MSG);
  break;
 }

 if (time_out <= 0) {
  ath_dbg(common, MCI,
   "MCI Wait for Reg 0x%08x = 0x%08x timeout\n",
   address, bit_position);
  ath_dbg(common, MCI,
   "MCI INT_RAW = 0x%08x, RX_MSG_RAW = 0x%08x\n",
   REG_READ(ah, AR_MCI_INTERRUPT_RAW),
   REG_READ(ah, AR_MCI_INTERRUPT_RX_MSG_RAW));
  time_out = 0;
 }

 return time_out;
}
