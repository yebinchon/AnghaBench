
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;


 scalar_t__ AVE_GIMR ;
 scalar_t__ AVE_GISR ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ave_irq_enable(struct net_device *ndev, u32 bitflag)
{
 struct ave_private *priv = netdev_priv(ndev);

 writel(readl(priv->base + AVE_GIMR) | bitflag, priv->base + AVE_GIMR);
 writel(bitflag, priv->base + AVE_GISR);
}
