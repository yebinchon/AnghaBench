
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ethtool_eee {int eee_active; int eee_enabled; } ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ports; } ;
struct TYPE_2__ {struct ethtool_eee eee; } ;


 int B53_EEE_LPI_INDICATE ;
 int B53_EEE_PAGE ;
 int BIT (int) ;
 int EOPNOTSUPP ;
 int b53_read16 (struct b53_device*,int ,int ,int*) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

int b53_get_mac_eee(struct dsa_switch *ds, int port, struct ethtool_eee *e)
{
 struct b53_device *dev = ds->priv;
 struct ethtool_eee *p = &dev->ports[port].eee;
 u16 reg;

 if (is5325(dev) || is5365(dev))
  return -EOPNOTSUPP;

 b53_read16(dev, B53_EEE_PAGE, B53_EEE_LPI_INDICATE, &reg);
 e->eee_enabled = p->eee_enabled;
 e->eee_active = !!(reg & BIT(port));

 return 0;
}
