
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {int dev; struct mv88e6xxx_chip* priv; } ;


 int dev_err (int ,char*,int) ;
 int mv88e6xxx_port_set_state (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_port_stp_state_set(struct dsa_switch *ds, int port,
      u8 state)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_set_state(chip, port, state);
 mv88e6xxx_reg_unlock(chip);

 if (err)
  dev_err(ds->dev, "p%d: failed to update state\n", port);
}
