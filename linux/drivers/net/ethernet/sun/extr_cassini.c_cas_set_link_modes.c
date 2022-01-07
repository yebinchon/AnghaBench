
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cas {int cas_flags; int crc_size; scalar_t__ regs; int dev; int rx_pause_on; int rx_pause_off; int rx_fifo_size; int min_frame_size; int phy_type; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int CAS_1000MB_MIN_FRAME ;
 int CAS_BMCR_SPEED1000 ;
 int CAS_FLAG_1000MB_CAP ;
 int CAS_MIN_FRAME ;
 int CAS_MIN_MTU ;
 scalar_t__ CAS_PHY_MII (int ) ;
 int MAC_CTRL_CFG_RECV_PAUSE_EN ;
 int MAC_CTRL_CFG_SEND_PAUSE_EN ;
 int MAC_RX_CFG_CARRIER_EXTEND ;
 int MAC_RX_CFG_STRIP_FCS ;
 int MAC_TX_CFG_CARRIER_EXTEND ;
 int MAC_TX_CFG_IGNORE_CARRIER ;
 int MAC_TX_CFG_IGNORE_COLL ;
 int MAC_TX_CFG_IPG_EN ;
 int MAC_TX_CFG_NEVER_GIVE_UP_EN ;
 int MAC_TX_CFG_NEVER_GIVE_UP_LIM ;
 int MAC_XIF_DISABLE_ECHO ;
 int MAC_XIF_FDPLX_LED ;
 int MAC_XIF_GMII_MODE ;
 int MAC_XIF_LINK_LED ;
 int MAC_XIF_MII_BUFFER_OUTPUT_EN ;
 int MAC_XIF_TX_MII_OUTPUT_EN ;
 int MII_BMCR ;
 int PCS_MII_AUTONEG_EN ;
 int PCS_MII_CTRL_DUPLEX ;
 scalar_t__ REG_MAC_CTRL_CFG ;
 scalar_t__ REG_MAC_RX_CFG ;
 scalar_t__ REG_MAC_SLOT_TIME ;
 scalar_t__ REG_MAC_TX_CFG ;
 scalar_t__ REG_MAC_XIF_CFG ;
 scalar_t__ REG_PCS_MII_CTRL ;
 int cas_mif_poll (struct cas*,int) ;
 int cas_phy_read (struct cas*,int ) ;
 int cas_read_mii_link_mode (struct cas*,int*,int*,int*) ;
 int cas_read_pcs_link_mode (struct cas*,int*,int*,int*) ;
 int cas_start_dma (struct cas*) ;
 int link ;
 int netdev_info (int ,char*,...) ;
 int netif_info (struct cas*,int ,int ,char*,int,char*) ;
 scalar_t__ netif_msg_link (struct cas*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_set_link_modes(struct cas *cp)
{
 u32 val;
 int full_duplex, speed, pause;

 full_duplex = 0;
 speed = 10;
 pause = 0;

 if (CAS_PHY_MII(cp->phy_type)) {
  cas_mif_poll(cp, 0);
  val = cas_phy_read(cp, MII_BMCR);
  if (val & BMCR_ANENABLE) {
   cas_read_mii_link_mode(cp, &full_duplex, &speed,
            &pause);
  } else {
   if (val & BMCR_FULLDPLX)
    full_duplex = 1;

   if (val & BMCR_SPEED100)
    speed = 100;
   else if (val & CAS_BMCR_SPEED1000)
    speed = (cp->cas_flags & CAS_FLAG_1000MB_CAP) ?
     1000 : 100;
  }
  cas_mif_poll(cp, 1);

 } else {
  val = readl(cp->regs + REG_PCS_MII_CTRL);
  cas_read_pcs_link_mode(cp, &full_duplex, &speed, &pause);
  if ((val & PCS_MII_AUTONEG_EN) == 0) {
   if (val & PCS_MII_CTRL_DUPLEX)
    full_duplex = 1;
  }
 }

 netif_info(cp, link, cp->dev, "Link up at %d Mbps, %s-duplex\n",
     speed, full_duplex ? "full" : "half");

 val = MAC_XIF_TX_MII_OUTPUT_EN | MAC_XIF_LINK_LED;
 if (CAS_PHY_MII(cp->phy_type)) {
  val |= MAC_XIF_MII_BUFFER_OUTPUT_EN;
  if (!full_duplex)
   val |= MAC_XIF_DISABLE_ECHO;
 }
 if (full_duplex)
  val |= MAC_XIF_FDPLX_LED;
 if (speed == 1000)
  val |= MAC_XIF_GMII_MODE;
 writel(val, cp->regs + REG_MAC_XIF_CFG);


 val = MAC_TX_CFG_IPG_EN;
 if (full_duplex) {
  val |= MAC_TX_CFG_IGNORE_CARRIER;
  val |= MAC_TX_CFG_IGNORE_COLL;
 } else {

  val |= MAC_TX_CFG_NEVER_GIVE_UP_EN;
  val |= MAC_TX_CFG_NEVER_GIVE_UP_LIM;

 }







 if ((speed == 1000) && !full_duplex) {
  writel(val | MAC_TX_CFG_CARRIER_EXTEND,
         cp->regs + REG_MAC_TX_CFG);

  val = readl(cp->regs + REG_MAC_RX_CFG);
  val &= ~MAC_RX_CFG_STRIP_FCS;
  writel(val | MAC_RX_CFG_CARRIER_EXTEND,
         cp->regs + REG_MAC_RX_CFG);

  writel(0x200, cp->regs + REG_MAC_SLOT_TIME);

  cp->crc_size = 4;

  cp->min_frame_size = CAS_1000MB_MIN_FRAME;

 } else {
  writel(val, cp->regs + REG_MAC_TX_CFG);




  val = readl(cp->regs + REG_MAC_RX_CFG);
  if (full_duplex) {
   val |= MAC_RX_CFG_STRIP_FCS;
   cp->crc_size = 0;
   cp->min_frame_size = CAS_MIN_MTU;
  } else {
   val &= ~MAC_RX_CFG_STRIP_FCS;
   cp->crc_size = 4;
   cp->min_frame_size = CAS_MIN_FRAME;
  }
  writel(val & ~MAC_RX_CFG_CARRIER_EXTEND,
         cp->regs + REG_MAC_RX_CFG);
  writel(0x40, cp->regs + REG_MAC_SLOT_TIME);
 }

 if (netif_msg_link(cp)) {
  if (pause & 0x01) {
   netdev_info(cp->dev, "Pause is enabled (rxfifo: %d off: %d on: %d)\n",
        cp->rx_fifo_size,
        cp->rx_pause_off,
        cp->rx_pause_on);
  } else if (pause & 0x10) {
   netdev_info(cp->dev, "TX pause enabled\n");
  } else {
   netdev_info(cp->dev, "Pause is disabled\n");
  }
 }

 val = readl(cp->regs + REG_MAC_CTRL_CFG);
 val &= ~(MAC_CTRL_CFG_SEND_PAUSE_EN | MAC_CTRL_CFG_RECV_PAUSE_EN);
 if (pause) {
  val |= MAC_CTRL_CFG_SEND_PAUSE_EN;
  if (pause & 0x01) {
   val |= MAC_CTRL_CFG_RECV_PAUSE_EN;
  }
 }
 writel(val, cp->regs + REG_MAC_CTRL_CFG);
 cas_start_dma(cp);
}
