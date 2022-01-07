
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AH_TIME_QUANTUM ;
 int AH_WAIT_TIMEOUT ;
 int AR_BTCOEX_CTRL2 ;
 int AR_BTCOEX_RC ;
 int AR_DIAG_SW ;
 int AR_MCI_RX_REMOTE_SLEEP ;
 int AR_MCI_RX_STATUS ;
 int AR_OBS_BUS_CTRL ;
 int BIT (int) ;
 int MS (int,int ) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int udelay (int) ;

void ar9003_mci_set_power_awake(struct ath_hw *ah)
{
 u32 btcoex_ctrl2, diag_sw;
 int i;
 u8 lna_ctrl, bt_sleep;

 for (i = 0; i < AH_WAIT_TIMEOUT; i++) {
  btcoex_ctrl2 = REG_READ(ah, AR_BTCOEX_CTRL2);
  if (btcoex_ctrl2 != 0xdeadbeef)
   break;
  udelay(AH_TIME_QUANTUM);
 }
 REG_WRITE(ah, AR_BTCOEX_CTRL2, (btcoex_ctrl2 | BIT(23)));

 for (i = 0; i < AH_WAIT_TIMEOUT; i++) {
  diag_sw = REG_READ(ah, AR_DIAG_SW);
  if (diag_sw != 0xdeadbeef)
   break;
  udelay(AH_TIME_QUANTUM);
 }
 REG_WRITE(ah, AR_DIAG_SW, (diag_sw | BIT(27) | BIT(19) | BIT(18)));
 lna_ctrl = REG_READ(ah, AR_OBS_BUS_CTRL) & 0x3;
 bt_sleep = MS(REG_READ(ah, AR_MCI_RX_STATUS), AR_MCI_RX_REMOTE_SLEEP);

 REG_WRITE(ah, AR_BTCOEX_CTRL2, btcoex_ctrl2);
 REG_WRITE(ah, AR_DIAG_SW, diag_sw);

 if (bt_sleep && (lna_ctrl == 2)) {
  REG_SET_BIT(ah, AR_BTCOEX_RC, 0x1);
  REG_CLR_BIT(ah, AR_BTCOEX_RC, 0x1);
  udelay(50);
 }
}
