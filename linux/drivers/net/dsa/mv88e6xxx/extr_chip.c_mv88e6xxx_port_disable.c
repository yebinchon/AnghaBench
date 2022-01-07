
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dev; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;


 int dev_err (int ,char*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 scalar_t__ mv88e6xxx_serdes_power (struct mv88e6xxx_chip*,int,int) ;

__attribute__((used)) static void mv88e6xxx_port_disable(struct dsa_switch *ds, int port)
{
 struct mv88e6xxx_chip *chip = ds->priv;

 mv88e6xxx_reg_lock(chip);
 if (mv88e6xxx_serdes_power(chip, port, 0))
  dev_err(chip->dev, "failed to power off SERDES\n");
 mv88e6xxx_reg_unlock(chip);
}
