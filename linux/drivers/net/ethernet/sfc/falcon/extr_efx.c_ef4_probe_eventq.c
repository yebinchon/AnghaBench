
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {scalar_t__ txq_entries; scalar_t__ rxq_entries; int net_dev; } ;
struct ef4_channel {scalar_t__ eventq_mask; int channel; struct ef4_nic* efx; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 unsigned long EF4_MAX_EVQ_SIZE ;
 int EF4_MIN_EVQ_SIZE ;
 int ef4_nic_probe_eventq (struct ef4_channel*) ;
 scalar_t__ max (unsigned long,int ) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ) ;
 int probe ;
 unsigned long roundup_pow_of_two (scalar_t__) ;

__attribute__((used)) static int ef4_probe_eventq(struct ef4_channel *channel)
{
 struct ef4_nic *efx = channel->efx;
 unsigned long entries;

 netif_dbg(efx, probe, efx->net_dev,
    "chan %d create event queue\n", channel->channel);



 entries = roundup_pow_of_two(efx->rxq_entries + efx->txq_entries + 128);
 EF4_BUG_ON_PARANOID(entries > EF4_MAX_EVQ_SIZE);
 channel->eventq_mask = max(entries, EF4_MIN_EVQ_SIZE) - 1;

 return ef4_nic_probe_eventq(channel);
}
