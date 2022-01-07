
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {int global2_addr; } ;


 int mv88e6xxx_wait_bit (struct mv88e6xxx_chip*,int ,int,int,int) ;

int mv88e6xxx_g2_wait_bit(struct mv88e6xxx_chip *chip, int reg, int
     bit, int val)
{
 return mv88e6xxx_wait_bit(chip, chip->info->global2_addr, reg,
      bit, val);
}
