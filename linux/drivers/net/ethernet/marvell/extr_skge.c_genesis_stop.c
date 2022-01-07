
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ phy_type; } ;


 int B2_GP_IO ;
 int B3_PA_CTRL ;
 int GP_DIR_0 ;
 int GP_DIR_2 ;
 int GP_IO_0 ;
 int GP_IO_2 ;
 int MFF_CLR_MAC_RST ;
 int MFF_SET_MAC_RST ;
 int PA_CLR_TO_TX1 ;
 int PA_CLR_TO_TX2 ;
 scalar_t__ SK_PHY_XMAC ;
 int SK_REG (int,int ) ;
 int TX_MFF_CTRL1 ;
 int XM_MMU_CMD ;
 int XM_MMU_ENA_RX ;
 int XM_MMU_ENA_TX ;
 int genesis_reset (struct skge_hw*,int) ;
 int skge_read16 (struct skge_hw*,int ) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_write16 (struct skge_hw*,int ,int) ;
 int skge_write32 (struct skge_hw*,int ,int ) ;
 int xm_read16 (struct skge_hw*,int,int ) ;
 int xm_write16 (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static void genesis_stop(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 unsigned retries = 1000;
 u16 cmd;


 cmd = xm_read16(hw, port, XM_MMU_CMD);
 cmd &= ~(XM_MMU_ENA_RX | XM_MMU_ENA_TX);
 xm_write16(hw, port, XM_MMU_CMD, cmd);

 genesis_reset(hw, port);


 skge_write16(hw, B3_PA_CTRL,
       port == 0 ? PA_CLR_TO_TX1 : PA_CLR_TO_TX2);


 skge_write16(hw, SK_REG(port, TX_MFF_CTRL1), MFF_CLR_MAC_RST);
 do {
  skge_write16(hw, SK_REG(port, TX_MFF_CTRL1), MFF_SET_MAC_RST);
  if (!(skge_read16(hw, SK_REG(port, TX_MFF_CTRL1)) & MFF_SET_MAC_RST))
   break;
 } while (--retries > 0);


 if (hw->phy_type != SK_PHY_XMAC) {
  u32 reg = skge_read32(hw, B2_GP_IO);
  if (port == 0) {
   reg |= GP_DIR_0;
   reg &= ~GP_IO_0;
  } else {
   reg |= GP_DIR_2;
   reg &= ~GP_IO_2;
  }
  skge_write32(hw, B2_GP_IO, reg);
  skge_read32(hw, B2_GP_IO);
 }

 xm_write16(hw, port, XM_MMU_CMD,
   xm_read16(hw, port, XM_MMU_CMD)
   & ~(XM_MMU_ENA_RX | XM_MMU_ENA_TX));

 xm_read16(hw, port, XM_MMU_CMD);
}
