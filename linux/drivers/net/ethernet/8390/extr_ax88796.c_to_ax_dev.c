
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;
struct ax_device {int dummy; } ;


 struct ei_device* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct ax_device *to_ax_dev(struct net_device *dev)
{
 struct ei_device *ei_local = netdev_priv(dev);
 return (struct ax_device *)(ei_local + 1);
}
