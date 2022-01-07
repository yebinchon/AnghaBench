
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct cpts {int dummy; } ;


 int CPTS_EV_RX ;
 int cpts_find_ts (struct cpts*,struct sk_buff*,int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

void cpts_rx_timestamp(struct cpts *cpts, struct sk_buff *skb)
{
 u64 ns;
 struct skb_shared_hwtstamps *ssh;

 ns = cpts_find_ts(cpts, skb, CPTS_EV_RX);
 if (!ns)
  return;
 ssh = skb_hwtstamps(skb);
 memset(ssh, 0, sizeof(*ssh));
 ssh->hwtstamp = ns_to_ktime(ns);
}
