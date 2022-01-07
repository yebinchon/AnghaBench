
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lance_private {scalar_t__ base; } ;


 scalar_t__ HPLANCE_STATUS ;
 int lance_close (struct net_device*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int out_8 (scalar_t__,int ) ;

__attribute__((used)) static int hplance_close(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);

 out_8(lp->base + HPLANCE_STATUS, 0);
 lance_close(dev);
 return 0;
}
