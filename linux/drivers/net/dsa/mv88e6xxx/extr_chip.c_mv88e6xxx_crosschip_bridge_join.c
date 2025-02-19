
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;


 int mv88e6xxx_has_pvt (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_pvt_map (struct mv88e6xxx_chip*,int,int) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_crosschip_bridge_join(struct dsa_switch *ds, int dev,
        int port, struct net_device *br)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 if (!mv88e6xxx_has_pvt(chip))
  return 0;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_pvt_map(chip, dev, port);
 mv88e6xxx_reg_unlock(chip);

 return err;
}
