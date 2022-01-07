
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int ppu_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void mv88e6xxx_phy_ppu_state_destroy(struct mv88e6xxx_chip *chip)
{
 del_timer_sync(&chip->ppu_timer);
}
