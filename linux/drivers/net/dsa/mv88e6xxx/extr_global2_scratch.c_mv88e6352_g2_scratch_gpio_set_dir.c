
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G2_SCRATCH_GPIO_DIR0 ;
 int MV88E6352_G2_SCRATCH_GPIO_DIR_IN ;
 int MV88E6352_G2_SCRATCH_GPIO_DIR_OUT ;
 int mv88e6xxx_g2_scratch_set_bit (struct mv88e6xxx_chip*,int ,unsigned int,int) ;

__attribute__((used)) static int mv88e6352_g2_scratch_gpio_set_dir(struct mv88e6xxx_chip *chip,
          unsigned int pin, bool input)
{
 int value = (input ? MV88E6352_G2_SCRATCH_GPIO_DIR_IN :
        MV88E6352_G2_SCRATCH_GPIO_DIR_OUT);

 return mv88e6xxx_g2_scratch_set_bit(chip,
         MV88E6352_G2_SCRATCH_GPIO_DIR0,
         pin, value);
}
