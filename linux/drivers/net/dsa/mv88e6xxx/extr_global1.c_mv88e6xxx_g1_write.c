
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {int global1_addr; } ;


 int mv88e6xxx_write (struct mv88e6xxx_chip*,int,int,int ) ;

int mv88e6xxx_g1_write(struct mv88e6xxx_chip *chip, int reg, u16 val)
{
 int addr = chip->info->global1_addr;

 return mv88e6xxx_write(chip, addr, reg, val);
}
