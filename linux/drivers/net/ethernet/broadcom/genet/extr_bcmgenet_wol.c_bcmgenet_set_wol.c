
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int * sopass; } ;
struct device {int dummy; } ;
struct bcmgenet_priv {int wol_irq_disabled; int wolopts; int wol_irq; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int MPD_PW_EN ;
 int UMAC_MPD_CTRL ;
 int UMAC_MPD_PW_LS ;
 int UMAC_MPD_PW_MS ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int ,int ) ;
 int device_can_wakeup (struct device*) ;
 int device_set_wakeup_enable (struct device*,int) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 int get_unaligned_be16 (int *) ;
 int get_unaligned_be32 (int *) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

int bcmgenet_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 struct device *kdev = &priv->pdev->dev;
 u32 reg;

 if (!device_can_wakeup(kdev))
  return -ENOTSUPP;

 if (wol->wolopts & ~(WAKE_MAGIC | WAKE_MAGICSECURE))
  return -EINVAL;

 reg = bcmgenet_umac_readl(priv, UMAC_MPD_CTRL);
 if (wol->wolopts & WAKE_MAGICSECURE) {
  bcmgenet_umac_writel(priv, get_unaligned_be16(&wol->sopass[0]),
         UMAC_MPD_PW_MS);
  bcmgenet_umac_writel(priv, get_unaligned_be32(&wol->sopass[2]),
         UMAC_MPD_PW_LS);
  reg |= MPD_PW_EN;
 } else {
  reg &= ~MPD_PW_EN;
 }
 bcmgenet_umac_writel(priv, reg, UMAC_MPD_CTRL);


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
