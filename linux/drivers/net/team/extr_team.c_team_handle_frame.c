
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct team_port {struct team* team; } ;
struct team_pcpu_stats {int syncp; int rx_multicast; int rx_bytes; int rx_packets; } ;
struct TYPE_3__ {scalar_t__ (* receive ) (struct team*,struct team_port*,struct sk_buff*) ;} ;
struct team {TYPE_2__* pcpu_stats; int dev; TYPE_1__ ops; } ;
struct sk_buff {scalar_t__ pkt_type; int dev; scalar_t__ len; } ;
typedef scalar_t__ rx_handler_result_t ;
struct TYPE_4__ {int rx_dropped; int rx_nohandler; } ;


 int GFP_ATOMIC ;
 scalar_t__ PACKET_MULTICAST ;
 scalar_t__ RX_HANDLER_ANOTHER ;
 scalar_t__ RX_HANDLER_CONSUMED ;
 scalar_t__ RX_HANDLER_EXACT ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 scalar_t__ stub1 (struct team*,struct team_port*,struct sk_buff*) ;
 int team_port_enabled (struct team_port*) ;
 struct team_port* team_port_get_rcu (int ) ;
 int this_cpu_inc (int ) ;
 struct team_pcpu_stats* this_cpu_ptr (TYPE_2__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static rx_handler_result_t team_handle_frame(struct sk_buff **pskb)
{
 struct sk_buff *skb = *pskb;
 struct team_port *port;
 struct team *team;
 rx_handler_result_t res;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  return RX_HANDLER_CONSUMED;

 *pskb = skb;

 port = team_port_get_rcu(skb->dev);
 team = port->team;
 if (!team_port_enabled(port)) {

  res = RX_HANDLER_EXACT;
 } else {
  res = team->ops.receive(team, port, skb);
 }
 if (res == RX_HANDLER_ANOTHER) {
  struct team_pcpu_stats *pcpu_stats;

  pcpu_stats = this_cpu_ptr(team->pcpu_stats);
  u64_stats_update_begin(&pcpu_stats->syncp);
  pcpu_stats->rx_packets++;
  pcpu_stats->rx_bytes += skb->len;
  if (skb->pkt_type == PACKET_MULTICAST)
   pcpu_stats->rx_multicast++;
  u64_stats_update_end(&pcpu_stats->syncp);

  skb->dev = team->dev;
 } else if (res == RX_HANDLER_EXACT) {
  this_cpu_inc(team->pcpu_stats->rx_nohandler);
 } else {
  this_cpu_inc(team->pcpu_stats->rx_dropped);
 }

 return res;
}
