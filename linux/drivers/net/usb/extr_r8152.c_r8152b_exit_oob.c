
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct r8152 {TYPE_2__* netdev; TYPE_1__* udev; } ;
struct TYPE_4__ {int features; } ;
struct TYPE_3__ {scalar_t__ speed; } ;


 int CRWECR_NORAML ;
 int LINK_LIST_READY ;
 int MCU_BORW_EN ;
 int MCU_TYPE_PLA ;
 int MCU_TYPE_USB ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NOW_IS_OOB ;
 int PLA_CR ;
 int PLA_CRWECR ;
 int PLA_OOB_CTRL ;
 int PLA_RCR ;
 int PLA_RMS ;
 int PLA_RXFIFO_CTRL0 ;
 int PLA_RXFIFO_CTRL1 ;
 int PLA_RXFIFO_CTRL2 ;
 int PLA_SFF_STS_7 ;
 int PLA_TCR0 ;
 int PLA_TXFIFO_CTRL ;
 int RCR_ACPT_ALL ;
 int RE_INIT_LL ;
 int RTL8152_RMS ;
 int RXFIFO_THR1_NORMAL ;
 int RXFIFO_THR2_FULL ;
 int RXFIFO_THR2_HIGH ;
 int RXFIFO_THR3_FULL ;
 int RXFIFO_THR3_HIGH ;
 int RX_THR_HIGH ;
 int TCR0_AUTO_FIFO ;
 int TEST_MODE_DISABLE ;
 int TXFIFO_THR_NORMAL ;
 int TX_AGG_MAX_THRESHOLD ;
 int TX_SIZE_ADJUST1 ;
 int USB_RX_BUF_TH ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_LOW ;
 int USB_TX_AGG ;
 int USB_TX_DMA ;
 int ocp_read_byte (struct r8152*,int ,int ) ;
 int ocp_read_dword (struct r8152*,int ,int ) ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_byte (struct r8152*,int ,int ,int) ;
 int ocp_write_dword (struct r8152*,int ,int ,int) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;
 int r8153_teredo_off (struct r8152*) ;
 int rtl8152_nic_reset (struct r8152*) ;
 int rtl_rx_vlan_en (struct r8152*,int) ;
 int rxdy_gated_en (struct r8152*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void r8152b_exit_oob(struct r8152 *tp)
{
 u32 ocp_data;
 int i;

 ocp_data = ocp_read_dword(tp, MCU_TYPE_PLA, PLA_RCR);
 ocp_data &= ~RCR_ACPT_ALL;
 ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RCR, ocp_data);

 rxdy_gated_en(tp, 1);
 r8153_teredo_off(tp);
 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_NORAML);
 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CR, 0x00);

 ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
 ocp_data &= ~NOW_IS_OOB;
 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_OOB_CTRL, ocp_data);

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_SFF_STS_7);
 ocp_data &= ~MCU_BORW_EN;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_SFF_STS_7, ocp_data);

 for (i = 0; i < 1000; i++) {
  ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
  if (ocp_data & LINK_LIST_READY)
   break;
  usleep_range(1000, 2000);
 }

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_SFF_STS_7);
 ocp_data |= RE_INIT_LL;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_SFF_STS_7, ocp_data);

 for (i = 0; i < 1000; i++) {
  ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
  if (ocp_data & LINK_LIST_READY)
   break;
  usleep_range(1000, 2000);
 }

 rtl8152_nic_reset(tp);


 ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL0, RXFIFO_THR1_NORMAL);

 if (tp->udev->speed == USB_SPEED_FULL ||
     tp->udev->speed == USB_SPEED_LOW) {

  ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL1,
    RXFIFO_THR2_FULL);
  ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL2,
    RXFIFO_THR3_FULL);
 } else {

  ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL1,
    RXFIFO_THR2_HIGH);
  ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL2,
    RXFIFO_THR3_HIGH);
 }


 ocp_write_dword(tp, MCU_TYPE_PLA, PLA_TXFIFO_CTRL, TXFIFO_THR_NORMAL);

 ocp_write_byte(tp, MCU_TYPE_USB, USB_TX_AGG, TX_AGG_MAX_THRESHOLD);
 ocp_write_dword(tp, MCU_TYPE_USB, USB_RX_BUF_TH, RX_THR_HIGH);
 ocp_write_dword(tp, MCU_TYPE_USB, USB_TX_DMA,
   TEST_MODE_DISABLE | TX_SIZE_ADJUST1);

 rtl_rx_vlan_en(tp, tp->netdev->features & NETIF_F_HW_VLAN_CTAG_RX);

 ocp_write_word(tp, MCU_TYPE_PLA, PLA_RMS, RTL8152_RMS);

 ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_TCR0);
 ocp_data |= TCR0_AUTO_FIFO;
 ocp_write_word(tp, MCU_TYPE_PLA, PLA_TCR0, ocp_data);
}
