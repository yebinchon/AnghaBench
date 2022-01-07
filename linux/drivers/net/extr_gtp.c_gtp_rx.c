
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; TYPE_1__* dev; int protocol; } ;
struct pdp_ctx {TYPE_1__* dev; int sk; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct TYPE_3__ {int tstats; } ;


 int dev_net (TYPE_1__*) ;
 int gtp_check_ms (struct sk_buff*,struct pdp_ctx*,unsigned int,unsigned int) ;
 scalar_t__ iptunnel_pull_header (struct sk_buff*,unsigned int,int ,int) ;
 int net_eq (int ,int ) ;
 int netdev_dbg (TYPE_1__*,char*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int sock_net (int ) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int gtp_rx(struct pdp_ctx *pctx, struct sk_buff *skb,
   unsigned int hdrlen, unsigned int role)
{
 struct pcpu_sw_netstats *stats;

 if (!gtp_check_ms(skb, pctx, hdrlen, role)) {
  netdev_dbg(pctx->dev, "No PDP ctx for this MS\n");
  return 1;
 }


 if (iptunnel_pull_header(skb, hdrlen, skb->protocol,
     !net_eq(sock_net(pctx->sk), dev_net(pctx->dev))))
  return -1;

 netdev_dbg(pctx->dev, "forwarding packet from GGSN to uplink\n");





 skb_reset_network_header(skb);

 skb->dev = pctx->dev;

 stats = this_cpu_ptr(pctx->dev->tstats);
 u64_stats_update_begin(&stats->syncp);
 stats->rx_packets++;
 stats->rx_bytes += skb->len;
 u64_stats_update_end(&stats->syncp);

 netif_rx(skb);
 return 0;
}
