
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_g1_atu_flush (struct mv88e6xxx_chip*,int ,int) ;
 int mv88e6xxx_g1_atu_set_age_time (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_g1_atu_set_learn2all (struct mv88e6xxx_chip*,int) ;

__attribute__((used)) static int mv88e6xxx_atu_setup(struct mv88e6xxx_chip *chip)
{
 int err;

 err = mv88e6xxx_g1_atu_flush(chip, 0, 1);
 if (err)
  return err;

 err = mv88e6xxx_g1_atu_set_learn2all(chip, 1);
 if (err)
  return err;

 return mv88e6xxx_g1_atu_set_age_time(chip, 300000);
}
