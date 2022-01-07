
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dev; int protocol; scalar_t__ len; } ;
struct mlxsw_sx_port_pcpu_stats {int syncp; int rx_bytes; int rx_packets; } ;
struct mlxsw_sx_port {int pcpu_stats; int dev; } ;
struct mlxsw_sx {TYPE_1__* bus_info; struct mlxsw_sx_port** ports; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn_ratelimited (int ,char*,size_t) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 struct mlxsw_sx_port_pcpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mlxsw_sx_rx_listener_func(struct sk_buff *skb, u8 local_port,
          void *priv)
{
 struct mlxsw_sx *mlxsw_sx = priv;
 struct mlxsw_sx_port *mlxsw_sx_port = mlxsw_sx->ports[local_port];
 struct mlxsw_sx_port_pcpu_stats *pcpu_stats;

 if (unlikely(!mlxsw_sx_port)) {
  dev_warn_ratelimited(mlxsw_sx->bus_info->dev, "Port %d: skb received for non-existent port\n",
         local_port);
  return;
 }

 skb->dev = mlxsw_sx_port->dev;

 pcpu_stats = this_cpu_ptr(mlxsw_sx_port->pcpu_stats);
 u64_stats_update_begin(&pcpu_stats->syncp);
 pcpu_stats->rx_packets++;
 pcpu_stats->rx_bytes += skb->len;
 u64_stats_update_end(&pcpu_stats->syncp);

 skb->protocol = eth_type_trans(skb, skb->dev);
 netif_receive_skb(skb);
}
