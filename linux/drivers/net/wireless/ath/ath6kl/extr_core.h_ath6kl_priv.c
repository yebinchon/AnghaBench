
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ath6kl_vif {struct ath6kl* ar; } ;
struct ath6kl {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct ath6kl *ath6kl_priv(struct net_device *dev)
{
 return ((struct ath6kl_vif *) netdev_priv(dev))->ar;
}
