
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct si4713_device {int dummy; } ;


 int si4713_powerdown (struct si4713_device*) ;
 int si4713_powerup (struct si4713_device*) ;

__attribute__((used)) static int si4713_set_power_state(struct si4713_device *sdev, u8 value)
{
 if (value)
  return si4713_powerup(sdev);
 return si4713_powerdown(sdev);
}
