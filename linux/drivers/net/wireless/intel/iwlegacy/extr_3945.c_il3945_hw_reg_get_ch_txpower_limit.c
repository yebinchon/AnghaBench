
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_power_avg; } ;
struct TYPE_3__ {scalar_t__ max_power; } ;
struct il_channel_info {int max_power_avg; TYPE_2__ eeprom; TYPE_1__ tgd_data; } ;
typedef int s8 ;


 int min (int,int) ;

__attribute__((used)) static int
il3945_hw_reg_get_ch_txpower_limit(struct il_channel_info *ch_info)
{
 s8 max_power;
  max_power = ch_info->eeprom.max_power_avg;

 return min(max_power, ch_info->max_power_avg);
}
