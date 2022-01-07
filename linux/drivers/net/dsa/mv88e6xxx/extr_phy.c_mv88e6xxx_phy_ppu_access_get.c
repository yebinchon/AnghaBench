
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int ppu_disabled; int ppu_timer; int ppu_mutex; } ;


 int del_timer (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mv88e6xxx_phy_ppu_disable (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_phy_ppu_access_get(struct mv88e6xxx_chip *chip)
{
 int ret;

 mutex_lock(&chip->ppu_mutex);






 if (!chip->ppu_disabled) {
  ret = mv88e6xxx_phy_ppu_disable(chip);
  if (ret < 0) {
   mutex_unlock(&chip->ppu_mutex);
   return ret;
  }
  chip->ppu_disabled = 1;
 } else {
  del_timer(&chip->ppu_timer);
  ret = 0;
 }

 return ret;
}
