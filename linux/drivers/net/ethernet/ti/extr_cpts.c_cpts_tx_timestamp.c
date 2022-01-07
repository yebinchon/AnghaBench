
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct cpts {int dummy; } ;
typedef int ssh ;
struct TYPE_2__ {int tx_flags; } ;


 int CPTS_EV_TX ;
 int SKBTX_IN_PROGRESS ;
 int cpts_find_ts (struct cpts*,struct sk_buff*,int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

void cpts_tx_timestamp(struct cpts *cpts, struct sk_buff *skb)
{
 u64 ns;
 struct skb_shared_hwtstamps ssh;

 if (!(skb_shinfo(skb)->tx_flags & SKBTX_IN_PROGRESS))
  return;
 ns = cpts_find_ts(cpts, skb, CPTS_EV_TX);
 if (!ns)
  return;
 memset(&ssh, 0, sizeof(ssh));
 ssh.hwtstamp = ns_to_ktime(ns);
 skb_tstamp_tx(skb, &ssh);
}
