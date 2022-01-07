
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct skge_port {int port; scalar_t__ flow_status; scalar_t__ duplex; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ phy_type; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ FLOW_STAT_LOC_SEND ;
 scalar_t__ FLOW_STAT_NONE ;
 scalar_t__ FLOW_STAT_SYMMETRIC ;
 int MFF_DIS_PAUSE ;
 int MFF_ENA_PAUSE ;
 int PHY_BCOM_AUX_CTRL ;
 int PHY_BCOM_INT_MASK ;
 int PHY_B_AC_DIS_PM ;
 int PHY_B_DEF_MSK ;
 int RX_MFF_CTRL1 ;
 scalar_t__ SK_PHY_BCOM ;
 scalar_t__ SK_PHY_XMAC ;
 int SK_REG (int,int ) ;
 int XM_IMSK ;
 int XM_ISRC ;
 int XM_IS_TXF_UR ;
 int XM_MAC_PTIME ;
 int XM_MMU_CMD ;
 int XM_MMU_ENA_RX ;
 int XM_MMU_ENA_TX ;
 int XM_MMU_GMII_FD ;
 int XM_MMU_IGN_PF ;
 int XM_MODE ;
 int XM_PAUSE_MODE ;
 int skge_link_up (struct skge_port*) ;
 int skge_write16 (struct skge_hw*,int ,int ) ;
 int xm_phy_read (struct skge_hw*,int,int ) ;
 int xm_phy_write (struct skge_hw*,int,int ,int) ;
 int xm_read16 (struct skge_hw*,int,int ) ;
 int xm_read32 (struct skge_hw*,int,int ) ;
 int xm_write16 (struct skge_hw*,int,int ,int) ;
 int xm_write32 (struct skge_hw*,int,int ,int ) ;

__attribute__((used)) static void genesis_link_up(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 u16 cmd, msk;
 u32 mode;

 cmd = xm_read16(hw, port, XM_MMU_CMD);





 if (skge->flow_status == FLOW_STAT_NONE ||
     skge->flow_status == FLOW_STAT_LOC_SEND)

  cmd |= XM_MMU_IGN_PF;
 else

  cmd &= ~XM_MMU_IGN_PF;

 xm_write16(hw, port, XM_MMU_CMD, cmd);

 mode = xm_read32(hw, port, XM_MODE);
 if (skge->flow_status == FLOW_STAT_SYMMETRIC ||
     skge->flow_status == FLOW_STAT_LOC_SEND) {
  xm_write16(hw, port, XM_MAC_PTIME, 0xffff);

  mode |= XM_PAUSE_MODE;
  skge_write16(hw, SK_REG(port, RX_MFF_CTRL1), MFF_ENA_PAUSE);
 } else {





  mode &= ~XM_PAUSE_MODE;

  skge_write16(hw, SK_REG(port, RX_MFF_CTRL1), MFF_DIS_PAUSE);
 }

 xm_write32(hw, port, XM_MODE, mode);


 msk = xm_read16(hw, port, XM_IMSK);
 msk &= ~XM_IS_TXF_UR;
 xm_write16(hw, port, XM_IMSK, msk);

 xm_read16(hw, port, XM_ISRC);


 cmd = xm_read16(hw, port, XM_MMU_CMD);
 if (hw->phy_type != SK_PHY_XMAC && skge->duplex == DUPLEX_FULL)
  cmd |= XM_MMU_GMII_FD;





 if (hw->phy_type == SK_PHY_BCOM) {
  xm_phy_write(hw, port, PHY_BCOM_AUX_CTRL,
        xm_phy_read(hw, port, PHY_BCOM_AUX_CTRL)
        & ~PHY_B_AC_DIS_PM);
  xm_phy_write(hw, port, PHY_BCOM_INT_MASK, PHY_B_DEF_MSK);
 }


 xm_write16(hw, port, XM_MMU_CMD,
   cmd | XM_MMU_ENA_RX | XM_MMU_ENA_TX);
 skge_link_up(skge);
}
