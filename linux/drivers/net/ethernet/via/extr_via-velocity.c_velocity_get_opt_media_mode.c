
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int spd_dpx; } ;
struct velocity_info {int mii_status; TYPE_1__ options; } ;
 int VELOCITY_AUTONEG_ENABLE ;
 int VELOCITY_DUPLEX_FULL ;
 int VELOCITY_SPEED_10 ;
 int VELOCITY_SPEED_100 ;
 int VELOCITY_SPEED_1000 ;

__attribute__((used)) static u32 velocity_get_opt_media_mode(struct velocity_info *vptr)
{
 u32 status = 0;

 switch (vptr->options.spd_dpx) {
 case 128:
  status = VELOCITY_AUTONEG_ENABLE;
  break;
 case 132:
  status = VELOCITY_SPEED_100 | VELOCITY_DUPLEX_FULL;
  break;
 case 130:
  status = VELOCITY_SPEED_10 | VELOCITY_DUPLEX_FULL;
  break;
 case 131:
  status = VELOCITY_SPEED_100;
  break;
 case 129:
  status = VELOCITY_SPEED_10;
  break;
 case 133:
  status = VELOCITY_SPEED_1000 | VELOCITY_DUPLEX_FULL;
  break;
 }
 vptr->mii_status = status;
 return status;
}
