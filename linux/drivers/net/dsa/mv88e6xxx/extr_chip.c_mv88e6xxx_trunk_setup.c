
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {scalar_t__ global2_addr; } ;


 int mv88e6xxx_g2_trunk_clear (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_trunk_setup(struct mv88e6xxx_chip *chip)
{

 if (chip->info->global2_addr)
  return mv88e6xxx_g2_trunk_clear(chip);

 return 0;
}
