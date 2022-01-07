
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ ppu_disable; scalar_t__ ppu_enable; } ;


 int mv88e6xxx_phy_ppu_state_init (struct mv88e6xxx_chip*) ;

void mv88e6xxx_phy_init(struct mv88e6xxx_chip *chip)
{
 if (chip->info->ops->ppu_enable && chip->info->ops->ppu_disable)
  mv88e6xxx_phy_ppu_state_init(chip);
}
