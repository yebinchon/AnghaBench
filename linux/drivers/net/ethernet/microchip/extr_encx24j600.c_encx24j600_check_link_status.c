
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct encx24j600_priv {scalar_t__ autoneg; int full_duplex; int speed; struct net_device* ndev; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int ESTAT ;
 int PHYLNK ;
 int SPEED_100 ;
 int encx24j600_read_reg (struct encx24j600_priv*,int ) ;
 int encx24j600_wait_for_autoneg (struct encx24j600_priv*) ;
 int ifdown ;
 int ifup ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_info (struct encx24j600_priv*,int ,struct net_device*,char*) ;

__attribute__((used)) static void encx24j600_check_link_status(struct encx24j600_priv *priv)
{
 struct net_device *dev = priv->ndev;
 u16 estat;

 estat = encx24j600_read_reg(priv, ESTAT);

 if (estat & PHYLNK) {
  if (priv->autoneg == AUTONEG_ENABLE)
   encx24j600_wait_for_autoneg(priv);

  netif_carrier_on(dev);
  netif_info(priv, ifup, dev, "link up\n");
 } else {
  netif_info(priv, ifdown, dev, "link down\n");




  priv->autoneg = AUTONEG_ENABLE;
  priv->full_duplex = 1;
  priv->speed = SPEED_100;
  netif_carrier_off(dev);
 }
}
