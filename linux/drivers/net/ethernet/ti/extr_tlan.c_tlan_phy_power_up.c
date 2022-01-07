
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tlan_priv {size_t phy_num; int * phy; } ;
struct net_device {int base_addr; int name; } ;


 int MII_GC_LOOPBK ;
 int MII_GEN_CTL ;
 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_TIMER_PHY_RESET ;
 int msecs_to_jiffies (int) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int tlan_mii_sync (int ) ;
 int tlan_mii_write_reg (struct net_device*,int ,int ,int ) ;
 int tlan_set_timer (struct net_device*,int ,int ) ;

__attribute__((used)) static void tlan_phy_power_up(struct net_device *dev)
{
 struct tlan_priv *priv = netdev_priv(dev);
 u16 value;

 TLAN_DBG(TLAN_DEBUG_GNRL, "%s: Powering up PHY.\n", dev->name);
 tlan_mii_sync(dev->base_addr);
 value = MII_GC_LOOPBK;
 tlan_mii_write_reg(dev, priv->phy[priv->phy_num], MII_GEN_CTL, value);
 tlan_mii_sync(dev->base_addr);




 tlan_set_timer(dev, msecs_to_jiffies(500), TLAN_TIMER_PHY_RESET);

}
