
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct phy_setting {scalar_t__ speed; int bit; } ;


 int ARRAY_SIZE (struct phy_setting*) ;
 int linkmode_clear_bit (int ,unsigned long*) ;
 struct phy_setting* settings ;

__attribute__((used)) static int __set_linkmode_max_speed(u32 max_speed, unsigned long *addr)
{
 const struct phy_setting *p;
 int i;

 for (i = 0, p = settings; i < ARRAY_SIZE(settings); i++, p++) {
  if (p->speed > max_speed)
   linkmode_clear_bit(p->bit, addr);
  else
   break;
 }

 return 0;
}
