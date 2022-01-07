
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lance_private {scalar_t__ base; } ;


 scalar_t__ HPLANCE_STATUS ;
 int LE_IE ;
 int lance_open (struct net_device*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int out_8 (scalar_t__,int ) ;

__attribute__((used)) static int hplance_open(struct net_device *dev)
{
 int status;
 struct lance_private *lp = netdev_priv(dev);

 status = lance_open(dev);
 if (status)
  return status;

 out_8(lp->base + HPLANCE_STATUS, LE_IE);

 return 0;
}
