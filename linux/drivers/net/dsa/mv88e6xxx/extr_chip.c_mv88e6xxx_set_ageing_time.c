
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;


 int mv88e6xxx_g1_atu_set_age_time (struct mv88e6xxx_chip*,unsigned int) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_set_ageing_time(struct dsa_switch *ds,
         unsigned int ageing_time)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_g1_atu_set_age_time(chip, ageing_time);
 mv88e6xxx_reg_unlock(chip);

 return err;
}
