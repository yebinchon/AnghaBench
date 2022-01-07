
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int general_rx; } ;
struct TYPE_3__ {scalar_t__ minor_max; scalar_t__ sync_event_diff_max; scalar_t__ sync_event_diff_min; } ;
struct efx_ptp_data {TYPE_2__ ts_corrections; int (* nic_to_kernel_time ) (scalar_t__,scalar_t__,int ) ;TYPE_1__ nic_time; } ;
struct efx_nic {int net_dev; struct efx_ptp_data* ptp_data; } ;
struct efx_channel {scalar_t__ sync_events_state; scalar_t__ sync_timestamp_minor; int sync_timestamp_major; struct efx_nic* efx; } ;


 scalar_t__ SYNC_EVENTS_VALID ;
 int drv ;
 scalar_t__ efx_rx_buf_timestamp_minor (struct efx_nic*,int ) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,scalar_t__,int ,scalar_t__) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int stub1 (scalar_t__,scalar_t__,int ) ;

void __efx_rx_skb_attach_timestamp(struct efx_channel *channel,
       struct sk_buff *skb)
{
 struct efx_nic *efx = channel->efx;
 struct efx_ptp_data *ptp = efx->ptp_data;
 u32 pkt_timestamp_major, pkt_timestamp_minor;
 u32 diff, carry;
 struct skb_shared_hwtstamps *timestamps;

 if (channel->sync_events_state != SYNC_EVENTS_VALID)
  return;

 pkt_timestamp_minor = efx_rx_buf_timestamp_minor(efx, skb_mac_header(skb));




 diff = pkt_timestamp_minor - channel->sync_timestamp_minor;
 if (pkt_timestamp_minor < channel->sync_timestamp_minor)
  diff += ptp->nic_time.minor_max;


 carry = (channel->sync_timestamp_minor >= ptp->nic_time.minor_max - diff) ?
  1 : 0;

 if (diff <= ptp->nic_time.sync_event_diff_max) {



  pkt_timestamp_major = channel->sync_timestamp_major + carry;
 } else if (diff >= ptp->nic_time.sync_event_diff_min) {




  pkt_timestamp_major = channel->sync_timestamp_major - 1 + carry;
 } else {





  netif_vdbg(efx, drv, efx->net_dev,
     "packet timestamp %x too far from sync event %x:%x\n",
     pkt_timestamp_minor, channel->sync_timestamp_major,
     channel->sync_timestamp_minor);
  return;
 }


 timestamps = skb_hwtstamps(skb);
 timestamps->hwtstamp =
  ptp->nic_to_kernel_time(pkt_timestamp_major,
     pkt_timestamp_minor,
     ptp->ts_corrections.general_rx);
}
