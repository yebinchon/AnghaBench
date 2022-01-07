
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;
struct madera {TYPE_1__ pdata; } ;


 int gpiod_set_raw_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void madera_disable_hard_reset(struct madera *madera)
{
 if (!madera->pdata.reset)
  return;

 gpiod_set_raw_value_cansleep(madera->pdata.reset, 1);
 usleep_range(1000, 2000);
}
