
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int phydev; } ;
struct nb8800_priv {scalar_t__ speed; int clk; int duplex; } ;


 int DIV_ROUND_UP (int,int ) ;
 int GMAC_MODE ;
 int HALF_DUPLEX ;
 int NB8800_IC_THRESHOLD ;
 int NB8800_MAC_MODE ;
 int NB8800_SLOT_TIME ;
 int RGMII_MODE ;
 scalar_t__ SPEED_1000 ;
 int clk_get_rate (int ) ;
 int nb8800_maskb (struct nb8800_priv*,int ,int,int) ;
 int nb8800_writeb (struct nb8800_priv*,int ,int) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 scalar_t__ phy_interface_is_rgmii (int ) ;

__attribute__((used)) static void nb8800_mac_config(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 bool gigabit = priv->speed == SPEED_1000;
 u32 mac_mode_mask = RGMII_MODE | HALF_DUPLEX | GMAC_MODE;
 u32 mac_mode = 0;
 u32 slot_time;
 u32 phy_clk;
 u32 ict;

 if (!priv->duplex)
  mac_mode |= HALF_DUPLEX;

 if (gigabit) {
  if (phy_interface_is_rgmii(dev->phydev))
   mac_mode |= RGMII_MODE;

  mac_mode |= GMAC_MODE;
  phy_clk = 125000000;


  slot_time = 255;
 } else {
  phy_clk = 25000000;
  slot_time = 128;
 }

 ict = DIV_ROUND_UP(phy_clk, clk_get_rate(priv->clk));

 nb8800_writeb(priv, NB8800_IC_THRESHOLD, ict);
 nb8800_writeb(priv, NB8800_SLOT_TIME, slot_time);
 nb8800_maskb(priv, NB8800_MAC_MODE, mac_mode_mask, mac_mode);
}
