
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* real_dev; } ;
struct TYPE_3__ {int ifindex; } ;


 TYPE_2__* macsec_priv (struct net_device const*) ;

__attribute__((used)) static int macsec_get_iflink(const struct net_device *dev)
{
 return macsec_priv(dev)->real_dev->ifindex;
}
