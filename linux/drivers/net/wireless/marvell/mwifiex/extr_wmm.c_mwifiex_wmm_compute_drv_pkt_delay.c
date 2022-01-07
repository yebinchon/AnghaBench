
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct sk_buff {int tstamp; } ;
struct TYPE_2__ {int drv_pkt_delay_max; } ;
struct mwifiex_private {int adapter; TYPE_1__ wmm; } ;


 int DATA ;
 int ktime_to_ms (int ) ;
 int min (int ,int ) ;
 int mwifiex_dbg (int ,int ,char*,int ,scalar_t__) ;
 int net_timedelta (int ) ;

u8
mwifiex_wmm_compute_drv_pkt_delay(struct mwifiex_private *priv,
      const struct sk_buff *skb)
{
 u32 queue_delay = ktime_to_ms(net_timedelta(skb->tstamp));
 u8 ret_val;







 ret_val = (u8) (min(queue_delay, priv->wmm.drv_pkt_delay_max) >> 1);

 mwifiex_dbg(priv->adapter, DATA, "data: WMM: Pkt Delay: %d ms,\t"
      "%d ms sent to FW\n", queue_delay, ret_val);

 return ret_val;
}
