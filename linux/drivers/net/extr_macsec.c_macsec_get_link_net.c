
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int real_dev; } ;


 struct net* dev_net (int ) ;
 TYPE_1__* macsec_priv (struct net_device const*) ;

__attribute__((used)) static struct net *macsec_get_link_net(const struct net_device *dev)
{
 return dev_net(macsec_priv(dev)->real_dev);
}
