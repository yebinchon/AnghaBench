
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct peak_time_ref {int dummy; } ;


 int netif_rx (struct sk_buff*) ;
 int peak_usb_get_ts_time (struct peak_time_ref*,int ,int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

int peak_usb_netif_rx(struct sk_buff *skb,
        struct peak_time_ref *time_ref, u32 ts_low)
{
 struct skb_shared_hwtstamps *hwts = skb_hwtstamps(skb);

 peak_usb_get_ts_time(time_ref, ts_low, &hwts->hwtstamp);

 return netif_rx(skb);
}
