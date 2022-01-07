
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int efx; } ;


 int efx_ptp_use_mac_tx_timestamps (int ) ;

__attribute__((used)) static bool efx_ptp_want_txqs(struct efx_channel *channel)
{
 return efx_ptp_use_mac_tx_timestamps(channel->efx);
}
