
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int fc; } ;


 int DUPLEX_FULL ;
 int SPEED_10000 ;

__attribute__((used)) static int pm3393_get_speed_duplex_fc(struct cmac *cmac, int *speed,
          int *duplex, int *fc)
{
 if (speed)
  *speed = SPEED_10000;
 if (duplex)
  *duplex = DUPLEX_FULL;
 if (fc)
  *fc = cmac->instance->fc;
 return 0;
}
