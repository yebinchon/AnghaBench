
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
typedef enum hinic_speed { ____Placeholder_hinic_speed } hinic_speed ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_100000 ;
 int SPEED_25000 ;
 int SPEED_40000 ;
 int SPEED_UNKNOWN ;

__attribute__((used)) static void set_link_speed(struct ethtool_link_ksettings *link_ksettings,
      enum hinic_speed speed)
{
 switch (speed) {
 case 130:
  link_ksettings->base.speed = SPEED_10;
  break;

 case 132:
  link_ksettings->base.speed = SPEED_100;
  break;

 case 134:
  link_ksettings->base.speed = SPEED_1000;
  break;

 case 131:
  link_ksettings->base.speed = SPEED_10000;
  break;

 case 129:
  link_ksettings->base.speed = SPEED_25000;
  break;

 case 128:
  link_ksettings->base.speed = SPEED_40000;
  break;

 case 133:
  link_ksettings->base.speed = SPEED_100000;
  break;

 default:
  link_ksettings->base.speed = SPEED_UNKNOWN;
  break;
 }
}
