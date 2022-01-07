
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_asy {int * tty; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 struct x25_asy* netdev_priv (struct net_device*) ;

__attribute__((used)) static int x25_asy_open_dev(struct net_device *dev)
{
 struct x25_asy *sl = netdev_priv(dev);
 if (sl->tty == ((void*)0))
  return -ENODEV;
 return 0;
}
