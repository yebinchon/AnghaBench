
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct mv88e6xxx_chip {struct dsa_switch* ds; } ;
struct dsa_switch {int num_ports; TYPE_2__* ports; TYPE_1__* dst; } ;
struct TYPE_6__ {struct net_device* bridge_dev; } ;
struct TYPE_5__ {struct net_device* bridge_dev; } ;
struct TYPE_4__ {struct dsa_switch** ds; } ;


 int BIT (int) ;
 int DSA_MAX_SWITCHES ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 scalar_t__ dsa_is_dsa_port (struct dsa_switch*,int) ;
 TYPE_3__* dsa_to_port (struct dsa_switch*,int) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_mask (struct mv88e6xxx_chip*) ;

__attribute__((used)) static u16 mv88e6xxx_port_vlan(struct mv88e6xxx_chip *chip, int dev, int port)
{
 struct dsa_switch *ds = ((void*)0);
 struct net_device *br;
 u16 pvlan;
 int i;

 if (dev < DSA_MAX_SWITCHES)
  ds = chip->ds->dst->ds[dev];


 if (!ds || port >= ds->num_ports)
  return 0;


 if (dsa_is_cpu_port(ds, port) || dsa_is_dsa_port(ds, port))
  return mv88e6xxx_port_mask(chip);

 br = ds->ports[port].bridge_dev;
 pvlan = 0;




 for (i = 0; i < mv88e6xxx_num_ports(chip); ++i)
  if (dsa_is_cpu_port(chip->ds, i) ||
      dsa_is_dsa_port(chip->ds, i) ||
      (br && dsa_to_port(chip->ds, i)->bridge_dev == br))
   pvlan |= BIT(i);

 return pvlan;
}
