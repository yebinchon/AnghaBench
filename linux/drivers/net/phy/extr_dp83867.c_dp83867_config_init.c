
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ interface; struct dp83867_private* priv; } ;
struct dp83867_private {int fifo_depth; int rx_id_delay; int tx_id_delay; scalar_t__ io_impedance; scalar_t__ port_mirroring; int clk_output_sel; scalar_t__ set_clk_output; scalar_t__ sgmii_ref_clk_en; scalar_t__ rxctrl_strap_quirk; } ;


 int BIT (int) ;
 int DP83867_10M_SGMII_CFG ;
 int DP83867_10M_SGMII_RATE_ADAPT_MASK ;
 int DP83867_CFG3 ;
 int DP83867_CFG4 ;
 int DP83867_CFG4_SGMII_ANEG_MASK ;
 int DP83867_CFG4_SGMII_ANEG_TIMER_16MS ;
 int DP83867_CLK_O_SEL_OFF ;
 int DP83867_DEVADDR ;
 int DP83867_IO_MUX_CFG ;
 int DP83867_IO_MUX_CFG_CLK_O_DISABLE ;
 int DP83867_IO_MUX_CFG_CLK_O_SEL_MASK ;
 int DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT ;
 int DP83867_IO_MUX_CFG_IO_IMPEDANCE_MASK ;
 int DP83867_PHYCR_FIFO_DEPTH_MASK ;
 int DP83867_PHYCR_FIFO_DEPTH_SHIFT ;
 int DP83867_PHYCR_RESERVED_MASK ;
 scalar_t__ DP83867_PORT_MIRROING_KEEP ;
 int DP83867_RGMIICTL ;
 int DP83867_RGMIIDCTL ;
 int DP83867_RGMII_RX_CLK_DELAY_EN ;
 int DP83867_RGMII_TX_CLK_DELAY_EN ;
 int DP83867_RGMII_TX_CLK_DELAY_SHIFT ;
 int DP83867_SGMIICTL ;
 int DP83867_SGMII_TYPE ;
 int DP83867_STRAP_STS1 ;
 int DP83867_STRAP_STS1_RESERVED ;
 int MII_DP83867_PHYCTRL ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int dp83867_config_port_mirroring (struct phy_device*) ;
 int dp83867_of_init (struct phy_device*) ;
 int phy_clear_bits_mmd (struct phy_device*,int ,int ,int) ;
 scalar_t__ phy_interface_is_rgmii (struct phy_device*) ;
 scalar_t__ phy_interrupt_is_valid (struct phy_device*) ;
 int phy_modify_mmd (struct phy_device*,int ,int ,int,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int dp83867_config_init(struct phy_device *phydev)
{
 struct dp83867_private *dp83867 = phydev->priv;
 int ret, val, bs;
 u16 delay;

 ret = dp83867_of_init(phydev);
 if (ret)
  return ret;


 if (dp83867->rxctrl_strap_quirk)
  phy_clear_bits_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4,
       BIT(7));

 if (phy_interface_is_rgmii(phydev)) {
  val = phy_read(phydev, MII_DP83867_PHYCTRL);
  if (val < 0)
   return val;
  val &= ~DP83867_PHYCR_FIFO_DEPTH_MASK;
  val |= (dp83867->fifo_depth << DP83867_PHYCR_FIFO_DEPTH_SHIFT);
  bs = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_STRAP_STS1);
  if (bs & DP83867_STRAP_STS1_RESERVED)
   val &= ~DP83867_PHYCR_RESERVED_MASK;

  ret = phy_write(phydev, MII_DP83867_PHYCTRL, val);
  if (ret)
   return ret;
  val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL);

  val &= ~(DP83867_RGMII_TX_CLK_DELAY_EN | DP83867_RGMII_RX_CLK_DELAY_EN);
  if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID)
   val |= (DP83867_RGMII_TX_CLK_DELAY_EN | DP83867_RGMII_RX_CLK_DELAY_EN);

  if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
   val |= DP83867_RGMII_TX_CLK_DELAY_EN;

  if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
   val |= DP83867_RGMII_RX_CLK_DELAY_EN;

  phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL, val);

  delay = (dp83867->rx_id_delay |
   (dp83867->tx_id_delay << DP83867_RGMII_TX_CLK_DELAY_SHIFT));

  phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIIDCTL,
         delay);
 }


 if (dp83867->io_impedance >= 0)
  phy_modify_mmd(phydev, DP83867_DEVADDR, DP83867_IO_MUX_CFG,
          DP83867_IO_MUX_CFG_IO_IMPEDANCE_MASK,
          dp83867->io_impedance);

 if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {






  ret = phy_modify_mmd(phydev, DP83867_DEVADDR,
         DP83867_10M_SGMII_CFG,
         DP83867_10M_SGMII_RATE_ADAPT_MASK,
         0);
  if (ret)
   return ret;





  ret = phy_modify_mmd(phydev, DP83867_DEVADDR,
         DP83867_CFG4,
         DP83867_CFG4_SGMII_ANEG_MASK,
         DP83867_CFG4_SGMII_ANEG_TIMER_16MS);

  if (ret)
   return ret;

  val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_SGMIICTL);




  if (dp83867->sgmii_ref_clk_en)
   val |= DP83867_SGMII_TYPE;
  else
   val &= ~DP83867_SGMII_TYPE;
  phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_SGMIICTL, val);
 }


 if (phy_interrupt_is_valid(phydev)) {
  val = phy_read(phydev, DP83867_CFG3);
  val |= BIT(7);
  phy_write(phydev, DP83867_CFG3, val);
 }

 if (dp83867->port_mirroring != DP83867_PORT_MIRROING_KEEP)
  dp83867_config_port_mirroring(phydev);


 if (dp83867->set_clk_output) {
  u16 mask = DP83867_IO_MUX_CFG_CLK_O_DISABLE;

  if (dp83867->clk_output_sel == DP83867_CLK_O_SEL_OFF) {
   val = DP83867_IO_MUX_CFG_CLK_O_DISABLE;
  } else {
   mask |= DP83867_IO_MUX_CFG_CLK_O_SEL_MASK;
   val = dp83867->clk_output_sel <<
         DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT;
  }

  phy_modify_mmd(phydev, DP83867_DEVADDR, DP83867_IO_MUX_CFG,
          mask, val);
 }

 return 0;
}
