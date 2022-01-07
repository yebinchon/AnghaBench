
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int fc; int enabled; } ;


 int DUPLEX_FULL ;
 int MAC_DIRECTION_TX ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int SPEED_10000 ;
 int pm3393_enable (struct cmac*,int) ;

__attribute__((used)) static int pm3393_set_speed_duplex_fc(struct cmac *cmac, int speed, int duplex,
          int fc)
{
 if (speed >= 0 && speed != SPEED_10000)
  return -1;
 if (duplex >= 0 && duplex != DUPLEX_FULL)
  return -1;
 if (fc & ~(PAUSE_TX | PAUSE_RX))
  return -1;

 if (fc != cmac->instance->fc) {
  cmac->instance->fc = (u8) fc;
  if (cmac->instance->enabled & MAC_DIRECTION_TX)
   pm3393_enable(cmac, MAC_DIRECTION_TX);
 }
 return 0;
}
