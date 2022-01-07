
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {int max_vid; } ;


 int mv88e6xxx_g1_vtu_flush (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_vtu_setup(struct mv88e6xxx_chip *chip)
{
 if (!chip->info->max_vid)
  return 0;

 return mv88e6xxx_g1_vtu_flush(chip);
}
