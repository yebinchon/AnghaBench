
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct libipw_device {void* priv; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void *libipw_priv(struct net_device *dev)
{
 return ((struct libipw_device *)netdev_priv(dev))->priv;
}
