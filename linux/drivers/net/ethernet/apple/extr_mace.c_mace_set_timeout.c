
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct mace_data {int timeout_active; TYPE_1__ tx_timeout; } ;


 scalar_t__ TX_TIMEOUT ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct mace_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void mace_set_timeout(struct net_device *dev)
{
    struct mace_data *mp = netdev_priv(dev);

    if (mp->timeout_active)
 del_timer(&mp->tx_timeout);
    mp->tx_timeout.expires = jiffies + TX_TIMEOUT;
    add_timer(&mp->tx_timeout);
    mp->timeout_active = 1;
}
