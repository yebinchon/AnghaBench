
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;


 char* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct pcnet_dev *PRIV(struct net_device *dev)
{
 char *p = netdev_priv(dev);
 return (struct pcnet_dev *)(p + sizeof(struct ei_device));
}
