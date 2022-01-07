
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int msg_enable; } ;
typedef TYPE_1__ pegasus_t ;


 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static void pegasus_set_msglevel(struct net_device *dev, u32 v)
{
 pegasus_t *pegasus = netdev_priv(dev);
 pegasus->msg_enable = v;
}
