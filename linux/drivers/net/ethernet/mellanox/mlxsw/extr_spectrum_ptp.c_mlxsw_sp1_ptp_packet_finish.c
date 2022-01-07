
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {scalar_t__ dev; } ;
struct mlxsw_sp_port {scalar_t__ dev; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int mlxsw_sp_rx_listener_no_mark_func (struct sk_buff*,size_t,struct mlxsw_sp*) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

__attribute__((used)) static void mlxsw_sp1_ptp_packet_finish(struct mlxsw_sp *mlxsw_sp,
     struct sk_buff *skb, u8 local_port,
     bool ingress,
     struct skb_shared_hwtstamps *hwtstamps)
{
 struct mlxsw_sp_port *mlxsw_sp_port;





 mlxsw_sp_port = mlxsw_sp->ports[local_port];
 if (!(mlxsw_sp_port && (!skb->dev || skb->dev == mlxsw_sp_port->dev))) {
  dev_kfree_skb_any(skb);
  return;
 }

 if (ingress) {
  if (hwtstamps)
   *skb_hwtstamps(skb) = *hwtstamps;
  mlxsw_sp_rx_listener_no_mark_func(skb, local_port, mlxsw_sp);
 } else {

  skb_tstamp_tx(skb, hwtstamps);
  dev_kfree_skb_any(skb);
 }
}
