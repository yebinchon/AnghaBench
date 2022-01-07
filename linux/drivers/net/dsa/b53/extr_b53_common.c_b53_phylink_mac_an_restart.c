
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* serdes_an_restart ) (struct b53_device*,int) ;} ;


 int stub1 (struct b53_device*,int) ;

void b53_phylink_mac_an_restart(struct dsa_switch *ds, int port)
{
 struct b53_device *dev = ds->priv;

 if (dev->ops->serdes_an_restart)
  dev->ops->serdes_an_restart(dev, port);
}
