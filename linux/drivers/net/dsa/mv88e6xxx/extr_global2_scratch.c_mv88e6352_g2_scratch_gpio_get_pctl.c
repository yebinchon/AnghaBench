
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;


 unsigned int MV88E6352_G2_SCRATCH_GPIO_PCTL0 ;
 int mv88e6xxx_g2_scratch_read (struct mv88e6xxx_chip*,int,int*) ;

__attribute__((used)) static int mv88e6352_g2_scratch_gpio_get_pctl(struct mv88e6xxx_chip *chip,
           unsigned int pin, int *func)
{
 int reg = MV88E6352_G2_SCRATCH_GPIO_PCTL0 + (pin / 2);
 int offset = (pin & 0x1) ? 4 : 0;
 u8 mask = (0x7 << offset);
 int err;
 u8 val;

 err = mv88e6xxx_g2_scratch_read(chip, reg, &val);
 if (err)
  return err;

 *func = (val & mask) >> offset;

 return 0;
}
