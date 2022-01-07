
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mv88e6xxx_chip {int ppu_work; } ;


 struct mv88e6xxx_chip* chip ;
 struct mv88e6xxx_chip* from_timer (int ,struct timer_list*,int ) ;
 int ppu_timer ;
 int schedule_work (int *) ;

__attribute__((used)) static void mv88e6xxx_phy_ppu_reenable_timer(struct timer_list *t)
{
 struct mv88e6xxx_chip *chip = from_timer(chip, t, ppu_timer);

 schedule_work(&chip->ppu_work);
}
