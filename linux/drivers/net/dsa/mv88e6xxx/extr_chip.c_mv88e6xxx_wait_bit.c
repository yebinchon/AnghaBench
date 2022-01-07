
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int BIT (int) ;
 int mv88e6xxx_wait_mask (struct mv88e6xxx_chip*,int,int,int,int) ;

int mv88e6xxx_wait_bit(struct mv88e6xxx_chip *chip, int addr, int reg,
         int bit, int val)
{
 return mv88e6xxx_wait_mask(chip, addr, reg, BIT(bit),
       val ? BIT(bit) : 0x0000);
}
