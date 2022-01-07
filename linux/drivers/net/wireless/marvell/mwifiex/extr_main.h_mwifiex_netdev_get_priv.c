
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mwifiex_private {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct mwifiex_private *
mwifiex_netdev_get_priv(struct net_device *dev)
{
 return (struct mwifiex_private *) (*(unsigned long *) netdev_priv(dev));
}
