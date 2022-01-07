
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* up_to_ac ;

u8 ath6kl_wmi_get_traffic_class(u8 user_priority)
{
 return up_to_ac[user_priority & 0x7];
}
