
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 int dev_mc_sync (struct net_device*,struct net_device*) ;
 int dev_uc_sync (struct net_device*,struct net_device*) ;
 TYPE_1__* macsec_priv (struct net_device*) ;

__attribute__((used)) static void macsec_dev_set_rx_mode(struct net_device *dev)
{
 struct net_device *real_dev = macsec_priv(dev)->real_dev;

 dev_mc_sync(real_dev, dev);
 dev_uc_sync(real_dev, dev);
}
