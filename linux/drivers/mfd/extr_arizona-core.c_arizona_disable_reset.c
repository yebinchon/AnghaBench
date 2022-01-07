
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reset; } ;
struct arizona {int type; TYPE_1__ pdata; } ;




 int gpiod_set_raw_value_cansleep (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void arizona_disable_reset(struct arizona *arizona)
{
 if (arizona->pdata.reset) {
  switch (arizona->type) {
  case 129:
  case 128:

   usleep_range(5000, 10000);
   break;
  default:
   break;
  }

  gpiod_set_raw_value_cansleep(arizona->pdata.reset, 1);
  usleep_range(1000, 5000);
 }
}
