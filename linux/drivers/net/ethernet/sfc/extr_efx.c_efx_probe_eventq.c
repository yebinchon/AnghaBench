
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ txq_entries; scalar_t__ rxq_entries; int net_dev; } ;
struct efx_channel {scalar_t__ eventq_mask; int channel; struct efx_nic* efx; } ;


 unsigned long EFX_MAX_EVQ_SIZE ;
 int EFX_MIN_EVQ_SIZE ;
 int EFX_WARN_ON_PARANOID (int) ;
 int efx_nic_probe_eventq (struct efx_channel*) ;
 scalar_t__ max (unsigned long,int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;
 int probe ;
 unsigned long roundup_pow_of_two (scalar_t__) ;

__attribute__((used)) static int efx_probe_eventq(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 unsigned long entries;

 netif_dbg(efx, probe, efx->net_dev,
    "chan %d create event queue\n", channel->channel);



 entries = roundup_pow_of_two(efx->rxq_entries + efx->txq_entries + 128);
 EFX_WARN_ON_PARANOID(entries > EFX_MAX_EVQ_SIZE);
 channel->eventq_mask = max(entries, EFX_MIN_EVQ_SIZE) - 1;

 return efx_nic_probe_eventq(channel);
}
