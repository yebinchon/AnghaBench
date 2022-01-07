
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int ppu_mutex; int ppu_timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mv88e6xxx_phy_ppu_access_put(struct mv88e6xxx_chip *chip)
{

 mod_timer(&chip->ppu_timer, jiffies + msecs_to_jiffies(10));
 mutex_unlock(&chip->ppu_mutex);
}
