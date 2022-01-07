
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int host_roaming; int dev; } ;
typedef TYPE_1__ local_info_t ;


 int HFA384X_RID_CNFROAMINGMODE ;
 int HFA384X_ROAMING_DISABLED ;
 int HFA384X_ROAMING_FIRMWARE ;
 int HFA384X_ROAMING_HOST ;
 int hostap_set_word (int ,int ,int ) ;

int hostap_set_roaming(local_info_t *local)
{
 u16 val;

 switch (local->host_roaming) {
 case 1:
  val = HFA384X_ROAMING_HOST;
  break;
 case 2:
  val = HFA384X_ROAMING_DISABLED;
  break;
 case 0:
 default:
  val = HFA384X_ROAMING_FIRMWARE;
  break;
 }

 return hostap_set_word(local->dev, HFA384X_RID_CNFROAMINGMODE, val);
}
