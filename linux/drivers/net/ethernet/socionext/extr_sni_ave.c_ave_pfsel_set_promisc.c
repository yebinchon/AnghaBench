
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;


 scalar_t__ AVE_PFMBIT (unsigned int) ;
 int AVE_PFMBIT_MASK ;
 scalar_t__ AVE_PFMBYTE (unsigned int) ;
 int AVE_PFMBYTE_MASK0 ;
 int AVE_PFMBYTE_MASK1 ;
 scalar_t__ AVE_PFSEL (unsigned int) ;
 unsigned int AVE_PF_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int ave_pfsel_start (struct net_device*,unsigned int) ;
 int ave_pfsel_stop (struct net_device*,unsigned int) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ave_pfsel_set_promisc(struct net_device *ndev,
      unsigned int entry, u32 rxring)
{
 struct ave_private *priv = netdev_priv(ndev);

 if (WARN_ON(entry > AVE_PF_SIZE))
  return;

 ave_pfsel_stop(ndev, entry);


 writel(AVE_PFMBYTE_MASK0, priv->base + AVE_PFMBYTE(entry));
 writel(AVE_PFMBYTE_MASK1, priv->base + AVE_PFMBYTE(entry) + 4);


 writel(AVE_PFMBIT_MASK, priv->base + AVE_PFMBIT(entry));


 writel(rxring, priv->base + AVE_PFSEL(entry));

 ave_pfsel_start(ndev, entry);
}
