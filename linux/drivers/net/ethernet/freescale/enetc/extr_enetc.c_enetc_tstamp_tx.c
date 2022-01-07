
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
typedef int shhwtstamps ;
struct TYPE_2__ {int tx_flags; } ;


 int SKBTX_IN_PROGRESS ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

__attribute__((used)) static void enetc_tstamp_tx(struct sk_buff *skb, u64 tstamp)
{
 struct skb_shared_hwtstamps shhwtstamps;

 if (skb_shinfo(skb)->tx_flags & SKBTX_IN_PROGRESS) {
  memset(&shhwtstamps, 0, sizeof(shhwtstamps));
  shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
  skb_tstamp_tx(skb, &shhwtstamps);
 }
}
