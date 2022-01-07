
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct nb8800_priv {int pause_tx; int pause_rx; } ;


 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int phy_set_asym_pause (struct phy_device*,int ,int ) ;

__attribute__((used)) static void nb8800_pause_adv(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;

 if (!phydev)
  return;

 phy_set_asym_pause(phydev, priv->pause_rx, priv->pause_tx);
}
