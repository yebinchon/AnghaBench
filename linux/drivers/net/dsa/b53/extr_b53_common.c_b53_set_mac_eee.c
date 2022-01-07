
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethtool_eee {int eee_enabled; } ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ports; } ;
struct TYPE_2__ {struct ethtool_eee eee; } ;


 int EOPNOTSUPP ;
 int b53_eee_enable_set (struct dsa_switch*,int,int ) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

int b53_set_mac_eee(struct dsa_switch *ds, int port, struct ethtool_eee *e)
{
 struct b53_device *dev = ds->priv;
 struct ethtool_eee *p = &dev->ports[port].eee;

 if (is5325(dev) || is5365(dev))
  return -EOPNOTSUPP;

 p->eee_enabled = e->eee_enabled;
 b53_eee_enable_set(ds, port, e->eee_enabled);

 return 0;
}
