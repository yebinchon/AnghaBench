
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int dummy; } ;
struct efx_channel {int sync_timestamp_major; } ;


 struct efx_channel* efx_ptp_channel (struct efx_nic*) ;

__attribute__((used)) static u32 last_sync_timestamp_major(struct efx_nic *efx)
{
 struct efx_channel *channel = efx_ptp_channel(efx);
 u32 major = 0;

 if (channel)
  major = channel->sync_timestamp_major;
 return major;
}
