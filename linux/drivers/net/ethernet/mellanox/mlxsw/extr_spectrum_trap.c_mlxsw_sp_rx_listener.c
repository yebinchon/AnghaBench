
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dev; int protocol; scalar_t__ len; } ;
struct mlxsw_sp_port_pcpu_stats {int syncp; int rx_bytes; int rx_packets; } ;
struct mlxsw_sp_port {int pcpu_stats; int dev; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_warn_ratelimited (int ,char*,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct mlxsw_sp_port_pcpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlxsw_sp_rx_listener(struct mlxsw_sp *mlxsw_sp, struct sk_buff *skb,
    u8 local_port,
    struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp_port_pcpu_stats *pcpu_stats;

 if (unlikely(!mlxsw_sp_port)) {
  dev_warn_ratelimited(mlxsw_sp->bus_info->dev, "Port %d: skb received for non-existent port\n",
         local_port);
  kfree_skb(skb);
  return -EINVAL;
 }

 skb->dev = mlxsw_sp_port->dev;

 pcpu_stats = this_cpu_ptr(mlxsw_sp_port->pcpu_stats);
 u64_stats_update_begin(&pcpu_stats->syncp);
 pcpu_stats->rx_packets++;
 pcpu_stats->rx_bytes += skb->len;
 u64_stats_update_end(&pcpu_stats->syncp);

 skb->protocol = eth_type_trans(skb, skb->dev);

 return 0;
}
