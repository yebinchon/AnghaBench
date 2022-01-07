
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lan743x_adapter {int dummy; } ;


 int lan743x_ptp_tx_ts_complete (struct lan743x_adapter*) ;
 int lan743x_ptp_tx_ts_enqueue_skb (struct lan743x_adapter*,struct sk_buff*,int) ;

void lan743x_ptp_tx_timestamp_skb(struct lan743x_adapter *adapter,
      struct sk_buff *skb, bool ignore_sync)
{
 lan743x_ptp_tx_ts_enqueue_skb(adapter, skb, ignore_sync);

 lan743x_ptp_tx_ts_complete(adapter);
}
