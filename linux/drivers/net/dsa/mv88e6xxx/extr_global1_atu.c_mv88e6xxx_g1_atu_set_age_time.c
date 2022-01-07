
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dev; TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int age_time_coeff; } ;


 int ERANGE ;
 int MV88E6XXX_G1_ATU_CTL ;
 int dev_dbg (int ,char*,int,int) ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6xxx_g1_atu_set_age_time(struct mv88e6xxx_chip *chip,
      unsigned int msecs)
{
 const unsigned int coeff = chip->info->age_time_coeff;
 const unsigned int min = 0x01 * coeff;
 const unsigned int max = 0xff * coeff;
 u8 age_time;
 u16 val;
 int err;

 if (msecs < min || msecs > max)
  return -ERANGE;


 age_time = (msecs + coeff / 2) / coeff;

 err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_ATU_CTL, &val);
 if (err)
  return err;


 val &= ~0xff0;
 val |= age_time << 4;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_CTL, val);
 if (err)
  return err;

 dev_dbg(chip->dev, "AgeTime set to 0x%02x (%d ms)\n", age_time,
  age_time * coeff);

 return 0;
}
