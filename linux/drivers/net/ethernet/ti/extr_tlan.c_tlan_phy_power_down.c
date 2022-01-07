
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tlan_priv {scalar_t__* phy; size_t phy_num; TYPE_1__* adapter; } ;
struct net_device {int base_addr; int name; } ;
struct TYPE_2__ {int flags; } ;


 int MII_GC_ISOLATE ;
 int MII_GC_LOOPBK ;
 int MII_GC_PDOWN ;
 int MII_GEN_CTL ;
 int TLAN_ADAPTER_USE_INTERN_10 ;
 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 scalar_t__ TLAN_PHY_NONE ;
 int TLAN_TIMER_PHY_PUP ;
 int msecs_to_jiffies (int) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int tlan_mii_sync (int ) ;
 int tlan_mii_write_reg (struct net_device*,scalar_t__,int ,int) ;
 int tlan_set_timer (struct net_device*,int ,int ) ;

__attribute__((used)) static void tlan_phy_power_down(struct net_device *dev)
{
 struct tlan_priv *priv = netdev_priv(dev);
 u16 value;

 TLAN_DBG(TLAN_DEBUG_GNRL, "%s: Powering down PHY(s).\n", dev->name);
 value = MII_GC_PDOWN | MII_GC_LOOPBK | MII_GC_ISOLATE;
 tlan_mii_sync(dev->base_addr);
 tlan_mii_write_reg(dev, priv->phy[priv->phy_num], MII_GEN_CTL, value);
 if ((priv->phy_num == 0) && (priv->phy[1] != TLAN_PHY_NONE)) {

  if (priv->adapter->flags & TLAN_ADAPTER_USE_INTERN_10)
   value = MII_GC_ISOLATE;
  tlan_mii_sync(dev->base_addr);
  tlan_mii_write_reg(dev, priv->phy[1], MII_GEN_CTL, value);
 }





 tlan_set_timer(dev, msecs_to_jiffies(50), TLAN_TIMER_PHY_PUP);

}
