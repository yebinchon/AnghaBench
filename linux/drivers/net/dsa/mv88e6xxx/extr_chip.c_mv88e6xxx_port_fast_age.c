
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {int dev; struct mv88e6xxx_chip* priv; } ;


 int dev_err (int ,char*,int) ;
 int mv88e6xxx_g1_atu_remove (struct mv88e6xxx_chip*,int ,int,int) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_port_fast_age(struct dsa_switch *ds, int port)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_g1_atu_remove(chip, 0, port, 0);
 mv88e6xxx_reg_unlock(chip);

 if (err)
  dev_err(ds->dev, "p%d: failed to flush ATU\n", port);
}
