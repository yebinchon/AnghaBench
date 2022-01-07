
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7530_priv {int p5_intf_sel; int reg_mutex; scalar_t__ p5_interface; int ds; } ;
struct dsa_switch {int dev; struct mt7530_priv* priv; } ;
typedef scalar_t__ phy_interface_t ;


 int CSR_RGMII_EDGE_ALIGN ;
 int CSR_RGMII_TXC_CFG (int) ;
 int MHWTRAP_MANUAL ;
 int MHWTRAP_P5_DIS ;
 int MHWTRAP_P5_MAC_SEL ;
 int MHWTRAP_P5_RGMII_MODE ;
 int MHWTRAP_PHY0_SEL ;
 int MT7530_IO_DRV_CR ;
 int MT7530_MHWTRAP ;
 int MT7530_P5RGMIIRXCR ;
 int MT7530_P5RGMIITXCR ;
 int MT7530_PMCR_P (int) ;




 int P5_IO_CLK_DRV (int) ;
 int P5_IO_DATA_DRV (int) ;
 scalar_t__ PHY_INTERFACE_MODE_NA ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int dev_dbg (int ,char*,int,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int dsa_is_dsa_port (int ,int) ;
 int mt7530_read (struct mt7530_priv*,int ) ;
 int mt7530_write (struct mt7530_priv*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p5_intf_modes (int) ;
 scalar_t__ phy_interface_mode_is_rgmii (scalar_t__) ;
 int phy_modes (scalar_t__) ;

__attribute__((used)) static void mt7530_setup_port5(struct dsa_switch *ds, phy_interface_t interface)
{
 struct mt7530_priv *priv = ds->priv;
 u8 tx_delay = 0;
 int val;

 mutex_lock(&priv->reg_mutex);

 val = mt7530_read(priv, MT7530_MHWTRAP);

 val |= MHWTRAP_MANUAL | MHWTRAP_P5_MAC_SEL | MHWTRAP_P5_DIS;
 val &= ~MHWTRAP_P5_RGMII_MODE & ~MHWTRAP_PHY0_SEL;

 switch (priv->p5_intf_sel) {
 case 129:

  val |= MHWTRAP_PHY0_SEL;

 case 128:

  val &= ~MHWTRAP_P5_MAC_SEL & ~MHWTRAP_P5_DIS;


  mt7530_write(priv, MT7530_PMCR_P(5), 0x56300);
  break;
 case 130:

  val &= ~MHWTRAP_P5_DIS;
  break;
 case 131:
  interface = PHY_INTERFACE_MODE_NA;
  break;
 default:
  dev_err(ds->dev, "Unsupported p5_intf_sel %d\n",
   priv->p5_intf_sel);
  goto unlock_exit;
 }


 if (phy_interface_mode_is_rgmii(interface)) {
  val |= MHWTRAP_P5_RGMII_MODE;


  mt7530_write(priv, MT7530_P5RGMIIRXCR, CSR_RGMII_EDGE_ALIGN);


  if (!dsa_is_dsa_port(priv->ds, 5) &&
      (interface == PHY_INTERFACE_MODE_RGMII_TXID ||
       interface == PHY_INTERFACE_MODE_RGMII_ID))
   tx_delay = 4;


  mt7530_write(priv, MT7530_P5RGMIITXCR,
        CSR_RGMII_TXC_CFG(0x10 + tx_delay));


  mt7530_write(priv, MT7530_IO_DRV_CR,
        P5_IO_CLK_DRV(1) | P5_IO_DATA_DRV(1));
 }

 mt7530_write(priv, MT7530_MHWTRAP, val);

 dev_dbg(ds->dev, "Setup P5, HWTRAP=0x%x, intf_sel=%s, phy-mode=%s\n",
  val, p5_intf_modes(priv->p5_intf_sel), phy_modes(interface));

 priv->p5_interface = interface;

unlock_exit:
 mutex_unlock(&priv->reg_mutex);
}
