
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int efx; } ;


 int efx_ptp_remove (int ) ;

__attribute__((used)) static void efx_ptp_remove_channel(struct efx_channel *channel)
{
 efx_ptp_remove(channel->efx);
}
