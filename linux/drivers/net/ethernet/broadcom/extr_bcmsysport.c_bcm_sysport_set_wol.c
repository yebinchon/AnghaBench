
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int sopass; } ;
struct device {int dummy; } ;
struct bcm_sysport_priv {int wol_irq_disabled; int wolopts; int wol_irq; int sopass; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int WAKE_FILTER ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int device_can_wakeup (struct device*) ;
 int device_set_wakeup_enable (struct device*,int) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 int memcpy (int ,int ,int) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcm_sysport_set_wol(struct net_device *dev,
          struct ethtool_wolinfo *wol)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 struct device *kdev = &priv->pdev->dev;
 u32 supported = WAKE_MAGIC | WAKE_MAGICSECURE | WAKE_FILTER;

 if (!device_can_wakeup(kdev))
  return -ENOTSUPP;

 if (wol->wolopts & ~supported)
  return -EINVAL;

 if (wol->wolopts & WAKE_MAGICSECURE)
  memcpy(priv->sopass, wol->sopass, sizeof(priv->sopass));


 if (wol->wolopts) {
  device_set_wakeup_enable(kdev, 1);
  if (priv->wol_irq_disabled)
   enable_irq_wake(priv->wol_irq);
  priv->wol_irq_disabled = 0;
 } else {
  device_set_wakeup_enable(kdev, 0);

  if (!priv->wol_irq_disabled)
   disable_irq_wake(priv->wol_irq);
  priv->wol_irq_disabled = 1;
 }

 priv->wolopts = wol->wolopts;

 return 0;
}
