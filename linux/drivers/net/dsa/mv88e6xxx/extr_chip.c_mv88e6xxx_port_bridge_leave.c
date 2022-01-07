
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {int dev; struct mv88e6xxx_chip* priv; } ;


 int dev_err (int ,char*) ;
 scalar_t__ mv88e6xxx_bridge_map (struct mv88e6xxx_chip*,struct net_device*) ;
 scalar_t__ mv88e6xxx_port_vlan_map (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_port_bridge_leave(struct dsa_switch *ds, int port,
     struct net_device *br)
{
 struct mv88e6xxx_chip *chip = ds->priv;

 mv88e6xxx_reg_lock(chip);
 if (mv88e6xxx_bridge_map(chip, br) ||
     mv88e6xxx_port_vlan_map(chip, port))
  dev_err(ds->dev, "failed to remap in-chip Port VLAN\n");
 mv88e6xxx_reg_unlock(chip);
}
