
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct skge_port {scalar_t__ duplex; } ;
struct skge_hw {int phy_type; int ports; struct net_device** dev; } ;
struct net_device {scalar_t__ mtu; int const* dev_addr; } ;


 int B2_GP_IO ;
 int B3_MA_RCINI_RX1 ;
 int B3_MA_RCINI_RX2 ;
 int B3_MA_RCINI_TX1 ;
 int B3_MA_RCINI_TX2 ;
 int B3_MA_TOINI_RX1 ;
 int B3_MA_TOINI_RX2 ;
 int B3_MA_TOINI_TX1 ;
 int B3_MA_TOINI_TX2 ;
 int B3_MA_TO_CTRL ;
 int B3_PA_CTRL ;
 scalar_t__ DUPLEX_HALF ;
 scalar_t__ ETH_DATA_LEN ;
 int GP_DIR_0 ;
 int GP_DIR_2 ;
 int GP_IO_0 ;
 int GP_IO_2 ;
 int MA_RST_CLR ;
 int MFF_CLR_MAC_RST ;
 int MFF_ENA_FLUSH ;
 int MFF_ENA_OP_MD ;
 int MFF_ENA_TIM_PAT ;
 int MFF_RST_CLR ;
 int MFF_SET_MAC_RST ;
 int MFF_TX_CTRL_DEF ;
 int PA_ENA_TO_TX1 ;
 int PA_ENA_TO_TX2 ;
 int RX_MFF_CTRL1 ;
 int RX_MFF_CTRL2 ;


 int SK_REG (int,int ) ;
 int TX_MFF_CTRL1 ;
 int TX_MFF_CTRL2 ;
 int XMR_DEF_MSK ;
 int XMT_DEF_MSK ;
 int XM_DEF_MODE ;
 int XM_EXM (int) ;
 int XM_HW_CFG ;
 int XM_HW_GMII_MD ;
 int XM_MODE ;
 int XM_RX_BIG_PK_OK ;
 int XM_RX_CMD ;
 int XM_RX_DIS_CEXT ;
 int XM_RX_EV_MSK ;
 int XM_RX_HI_WM ;
 int XM_RX_LENERR_OK ;
 int XM_RX_STRIP_FCS ;
 int XM_SA ;
 int XM_SC_CLR_RXC ;
 int XM_SC_CLR_TXC ;
 int XM_STAT_CMD ;
 int XM_TX_AUTO_PAD ;
 int XM_TX_CMD ;
 int XM_TX_EV_MSK ;
 int XM_TX_THR ;
 int bcom_check_link (struct skge_hw*,int) ;
 int bcom_phy_init (struct skge_port*) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int skge_read16 (struct skge_hw*,int ) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_write16 (struct skge_hw*,int ,int) ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int) ;
 int udelay (int) ;
 int xm_outaddr (struct skge_hw*,int,int ,int const*) ;
 int xm_phy_init (struct skge_port*) ;
 int xm_write16 (struct skge_hw*,int,int ,int) ;
 int xm_write32 (struct skge_hw*,int,int ,int ) ;

__attribute__((used)) static void genesis_mac_init(struct skge_hw *hw, int port)
{
 struct net_device *dev = hw->dev[port];
 struct skge_port *skge = netdev_priv(dev);
 int jumbo = hw->dev[port]->mtu > ETH_DATA_LEN;
 int i;
 u32 r;
 static const u8 zero[6] = { 0 };

 for (i = 0; i < 10; i++) {
  skge_write16(hw, SK_REG(port, TX_MFF_CTRL1),
        MFF_SET_MAC_RST);
  if (skge_read16(hw, SK_REG(port, TX_MFF_CTRL1)) & MFF_SET_MAC_RST)
   goto reset_ok;
  udelay(1);
 }

 netdev_warn(dev, "genesis reset failed\n");

 reset_ok:

 skge_write16(hw, SK_REG(port, TX_MFF_CTRL1), MFF_CLR_MAC_RST);






 if (hw->phy_type != 128) {

  r = skge_read32(hw, B2_GP_IO);
  if (port == 0)
   r |= GP_DIR_0|GP_IO_0;
  else
   r |= GP_DIR_2|GP_IO_2;

  skge_write32(hw, B2_GP_IO, r);


  xm_write16(hw, port, XM_HW_CFG, XM_HW_GMII_MD);
 }


 switch (hw->phy_type) {
 case 128:
  xm_phy_init(skge);
  break;
 case 129:
  bcom_phy_init(skge);
  bcom_check_link(hw, port);
 }


 xm_outaddr(hw, port, XM_SA, dev->dev_addr);


 for (i = 1; i < 16; i++)
  xm_outaddr(hw, port, XM_EXM(i), zero);


 xm_write16(hw, port, XM_STAT_CMD,
   XM_SC_CLR_RXC | XM_SC_CLR_TXC);

 xm_write16(hw, port, XM_STAT_CMD,
   XM_SC_CLR_RXC | XM_SC_CLR_TXC);


 xm_write16(hw, port, XM_RX_HI_WM, 1450);


 r = XM_RX_LENERR_OK | XM_RX_STRIP_FCS;
 if (jumbo)
  r |= XM_RX_BIG_PK_OK;

 if (skge->duplex == DUPLEX_HALF) {





  r |= XM_RX_DIS_CEXT;
 }
 xm_write16(hw, port, XM_RX_CMD, r);


 xm_write16(hw, port, XM_TX_CMD, XM_TX_AUTO_PAD);


 if (hw->ports > 1 && jumbo)
  xm_write16(hw, port, XM_TX_THR, 1020);
 else
  xm_write16(hw, port, XM_TX_THR, 512);
 xm_write32(hw, port, XM_MODE, XM_DEF_MODE);







 xm_write32(hw, port, XM_RX_EV_MSK, XMR_DEF_MSK);






 xm_write32(hw, port, XM_TX_EV_MSK, XMT_DEF_MSK);


 skge_write16(hw, B3_MA_TO_CTRL, MA_RST_CLR);


 skge_write8(hw, B3_MA_TOINI_RX1, 72);
 skge_write8(hw, B3_MA_TOINI_RX2, 72);
 skge_write8(hw, B3_MA_TOINI_TX1, 72);
 skge_write8(hw, B3_MA_TOINI_TX2, 72);

 skge_write8(hw, B3_MA_RCINI_RX1, 0);
 skge_write8(hw, B3_MA_RCINI_RX2, 0);
 skge_write8(hw, B3_MA_RCINI_TX1, 0);
 skge_write8(hw, B3_MA_RCINI_TX2, 0);


 skge_write8(hw, SK_REG(port, RX_MFF_CTRL2), MFF_RST_CLR);
 skge_write16(hw, SK_REG(port, RX_MFF_CTRL1), MFF_ENA_TIM_PAT);
 skge_write8(hw, SK_REG(port, RX_MFF_CTRL2), MFF_ENA_OP_MD);


 skge_write8(hw, SK_REG(port, TX_MFF_CTRL2), MFF_RST_CLR);
 skge_write16(hw, SK_REG(port, TX_MFF_CTRL1), MFF_TX_CTRL_DEF);
 skge_write8(hw, SK_REG(port, TX_MFF_CTRL2), MFF_ENA_OP_MD);

 if (jumbo) {

  skge_write16(hw, SK_REG(port, RX_MFF_CTRL1), MFF_ENA_FLUSH);
 } else {

  skge_write16(hw, B3_PA_CTRL,
        (port == 0) ? PA_ENA_TO_TX1 : PA_ENA_TO_TX2);
 }
}
