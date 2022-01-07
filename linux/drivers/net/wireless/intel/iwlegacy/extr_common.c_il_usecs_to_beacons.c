
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int beacon_time_tsf_bits; } ;
struct il_priv {TYPE_1__ hw_params; } ;


 int TIME_UNIT ;
 int il_beacon_time_mask_high (struct il_priv*,int) ;
 int il_beacon_time_mask_low (struct il_priv*,int) ;

u32
il_usecs_to_beacons(struct il_priv *il, u32 usec, u32 beacon_interval)
{
 u32 quot;
 u32 rem;
 u32 interval = beacon_interval * TIME_UNIT;

 if (!interval || !usec)
  return 0;

 quot =
     (usec /
      interval) & (il_beacon_time_mask_high(il,
         il->hw_params.
         beacon_time_tsf_bits) >> il->
     hw_params.beacon_time_tsf_bits);
 rem =
     (usec % interval) & il_beacon_time_mask_low(il,
       il->hw_params.
       beacon_time_tsf_bits);

 return (quot << il->hw_params.beacon_time_tsf_bits) + rem;
}
