
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i596_private {int ca; } ;


 struct i596_private* netdev_priv (struct net_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void ca(struct net_device *dev)
{
 struct i596_private *lp = netdev_priv(dev);

 writel(0, lp->ca);
}
