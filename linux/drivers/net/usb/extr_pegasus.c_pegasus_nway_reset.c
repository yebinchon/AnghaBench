
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int mii; } ;
typedef TYPE_1__ pegasus_t ;


 int mii_nway_restart (int *) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int pegasus_nway_reset(struct net_device *dev)
{
 pegasus_t *pegasus = netdev_priv(dev);
 return mii_nway_restart(&pegasus->mii);
}
