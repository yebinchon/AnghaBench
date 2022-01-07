
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int ppu_timer; int ppu_work; int ppu_mutex; } ;


 int INIT_WORK (int *,int ) ;
 int mutex_init (int *) ;
 int mv88e6xxx_phy_ppu_reenable_timer ;
 int mv88e6xxx_phy_ppu_reenable_work ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void mv88e6xxx_phy_ppu_state_init(struct mv88e6xxx_chip *chip)
{
 mutex_init(&chip->ppu_mutex);
 INIT_WORK(&chip->ppu_work, mv88e6xxx_phy_ppu_reenable_work);
 timer_setup(&chip->ppu_timer, mv88e6xxx_phy_ppu_reenable_timer, 0);
}
