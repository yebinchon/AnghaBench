
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r8152 {int coalesce; int flags; int udev; } ;


 int AUTOLOAD_DONE ;
 int BMCR_PDOWN ;
 int GREEN_ETHERNET ;
 int MAC_CLK_SPDWN_EN ;
 int MCU_TYPE_PLA ;
 int MCU_TYPE_USB ;
 int MII_BMCR ;
 int PHY_STAT_LAN_ON ;
 int PLA_BOOT_CTRL ;
 int PLA_MAC_PWR_CTRL2 ;
 int RTL8152_UNPLUG ;
 int RX_AGG_DISABLE ;
 int RX_ZERO_EN ;
 int USB_MSC_TIMER ;
 int USB_U1U2_TIMER ;
 int USB_USB_CTRL ;
 int msleep (int) ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;
 int r8152_mdio_read (struct r8152*,int ) ;
 int r8152_mdio_write (struct r8152*,int ,int) ;
 int r8153_phy_status (struct r8152*,int ) ;
 int r8153_queue_wake (struct r8152*,int) ;
 int r8153_u2p3en (struct r8152*,int) ;
 int r8153b_power_cut_en (struct r8152*,int) ;
 int r8153b_u1u2en (struct r8152*,int) ;
 int r8153b_ups_en (struct r8152*,int) ;
 int rtl_runtime_suspend_enable (struct r8152*,int) ;
 int rtl_tally_reset (struct r8152*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_enable_lpm (int ) ;

__attribute__((used)) static void r8153b_init(struct r8152 *tp)
{
 u32 ocp_data;
 u16 data;
 int i;

 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 r8153b_u1u2en(tp, 0);

 for (i = 0; i < 500; i++) {
  if (ocp_read_word(tp, MCU_TYPE_PLA, PLA_BOOT_CTRL) &
      AUTOLOAD_DONE)
   break;
  msleep(20);
 }

 data = r8153_phy_status(tp, 0);

 data = r8152_mdio_read(tp, MII_BMCR);
 if (data & BMCR_PDOWN) {
  data &= ~BMCR_PDOWN;
  r8152_mdio_write(tp, MII_BMCR, data);
 }

 data = r8153_phy_status(tp, PHY_STAT_LAN_ON);

 r8153_u2p3en(tp, 0);


 ocp_write_word(tp, MCU_TYPE_USB, USB_MSC_TIMER, 0x0fff);


 ocp_write_word(tp, MCU_TYPE_USB, USB_U1U2_TIMER, 500);

 r8153b_power_cut_en(tp, 0);
 r8153b_ups_en(tp, 0);
 r8153_queue_wake(tp, 0);
 rtl_runtime_suspend_enable(tp, 0);
 r8153b_u1u2en(tp, 1);
 usb_enable_lpm(tp->udev);


 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL2);
 ocp_data |= MAC_CLK_SPDWN_EN;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL2, ocp_data);

 set_bit(GREEN_ETHERNET, &tp->flags);


 ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_USB_CTRL);
 ocp_data &= ~(RX_AGG_DISABLE | RX_ZERO_EN);
 ocp_write_word(tp, MCU_TYPE_USB, USB_USB_CTRL, ocp_data);

 rtl_tally_reset(tp);

 tp->coalesce = 15000;
}
