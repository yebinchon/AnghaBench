
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sixpack {int * tty; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 struct sixpack* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sp_open_dev(struct net_device *dev)
{
 struct sixpack *sp = netdev_priv(dev);

 if (sp->tty == ((void*)0))
  return -ENODEV;
 return 0;
}
