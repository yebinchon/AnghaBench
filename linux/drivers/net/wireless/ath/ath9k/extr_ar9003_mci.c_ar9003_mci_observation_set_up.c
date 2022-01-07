
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {int config; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int AR_BTCOEX_CTRL2 ;
 int AR_BTCOEX_CTRL2_GPIO_OBS_SEL ;
 int AR_BTCOEX_CTRL2_MAC_BB_OBS_SEL ;
 int AR_DIAG_OBS_PT_SEL1 ;
 int AR_DIAG_OBS_PT_SEL2 ;
 int AR_DIAG_SW ;
 int AR_GLB_DS_JTAG_DISABLE ;
 int AR_GLB_GPIO_CONTROL ;
 int AR_GLB_WLAN_UART_INTF_EN ;
 int AR_GPIO_INPUT_EN_VAL ;
 int AR_GPIO_JTAG_DISABLE ;
 int AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX ;
 int AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX ;
 int AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK ;
 int AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA ;
 int AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK ;
 int AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA ;
 int AR_GPIO_OUTPUT_MUX_AS_OUTPUT ;
 int AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX ;
 int AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX ;
 int AR_MACMISC ;
 int AR_MACMISC_MISC_OBS_BUS_LSB ;
 int AR_MACMISC_MISC_OBS_BUS_MSB ;
 int AR_OBS ;
 int AR_PHY_GLB_CONTROL ;
 int AR_PHY_TEST_CTL_DEBUGPORT_SEL ;
 int AR_PHY_TEST_CTL_STATUS ;
 int ATH_MCI_CONFIG_MCI_OBS_BT ;
 int ATH_MCI_CONFIG_MCI_OBS_GPIO ;
 int ATH_MCI_CONFIG_MCI_OBS_MCI ;
 int ATH_MCI_CONFIG_MCI_OBS_TXRX ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_gpio_request_out (struct ath_hw*,int,int *,int ) ;

__attribute__((used)) static void ar9003_mci_observation_set_up(struct ath_hw *ah)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 if (mci->config & ATH_MCI_CONFIG_MCI_OBS_MCI) {
  ath9k_hw_gpio_request_out(ah, 3, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA);
  ath9k_hw_gpio_request_out(ah, 2, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK);
  ath9k_hw_gpio_request_out(ah, 1, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA);
  ath9k_hw_gpio_request_out(ah, 0, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK);
 } else if (mci->config & ATH_MCI_CONFIG_MCI_OBS_TXRX) {
  ath9k_hw_gpio_request_out(ah, 3, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX);
  ath9k_hw_gpio_request_out(ah, 2, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX);
  ath9k_hw_gpio_request_out(ah, 1, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX);
  ath9k_hw_gpio_request_out(ah, 0, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX);
  ath9k_hw_gpio_request_out(ah, 5, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_OUTPUT);
 } else if (mci->config & ATH_MCI_CONFIG_MCI_OBS_BT) {
  ath9k_hw_gpio_request_out(ah, 3, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX);
  ath9k_hw_gpio_request_out(ah, 2, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX);
  ath9k_hw_gpio_request_out(ah, 1, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA);
  ath9k_hw_gpio_request_out(ah, 0, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK);
 } else
  return;

 REG_SET_BIT(ah, AR_GPIO_INPUT_EN_VAL, AR_GPIO_JTAG_DISABLE);

 REG_RMW_FIELD(ah, AR_PHY_GLB_CONTROL, AR_GLB_DS_JTAG_DISABLE, 1);
 REG_RMW_FIELD(ah, AR_PHY_GLB_CONTROL, AR_GLB_WLAN_UART_INTF_EN, 0);
 REG_SET_BIT(ah, AR_GLB_GPIO_CONTROL, ATH_MCI_CONFIG_MCI_OBS_GPIO);

 REG_RMW_FIELD(ah, AR_BTCOEX_CTRL2, AR_BTCOEX_CTRL2_GPIO_OBS_SEL, 0);
 REG_RMW_FIELD(ah, AR_BTCOEX_CTRL2, AR_BTCOEX_CTRL2_MAC_BB_OBS_SEL, 1);
 REG_WRITE(ah, AR_OBS, 0x4b);
 REG_RMW_FIELD(ah, AR_DIAG_SW, AR_DIAG_OBS_PT_SEL1, 0x03);
 REG_RMW_FIELD(ah, AR_DIAG_SW, AR_DIAG_OBS_PT_SEL2, 0x01);
 REG_RMW_FIELD(ah, AR_MACMISC, AR_MACMISC_MISC_OBS_BUS_LSB, 0x02);
 REG_RMW_FIELD(ah, AR_MACMISC, AR_MACMISC_MISC_OBS_BUS_MSB, 0x03);
 REG_RMW_FIELD(ah, AR_PHY_TEST_CTL_STATUS,
        AR_PHY_TEST_CTL_DEBUGPORT_SEL, 0x07);
}
