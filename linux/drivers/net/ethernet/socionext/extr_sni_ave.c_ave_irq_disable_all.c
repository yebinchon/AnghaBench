
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;


 scalar_t__ AVE_GIMR ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static u32 ave_irq_disable_all(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);
 u32 ret;

 ret = readl(priv->base + AVE_GIMR);
 writel(0, priv->base + AVE_GIMR);

 return ret;
}
