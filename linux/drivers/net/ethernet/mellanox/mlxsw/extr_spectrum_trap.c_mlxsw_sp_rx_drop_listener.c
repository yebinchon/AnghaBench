
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp {int core; struct mlxsw_sp_port** ports; } ;
struct devlink_port {int dummy; } ;
struct devlink {int dummy; } ;


 int ETH_HLEN ;
 int consume_skb (struct sk_buff*) ;
 struct mlxsw_sp* devlink_trap_ctx_priv (void*) ;
 int devlink_trap_report (struct devlink*,struct sk_buff*,void*,struct devlink_port*) ;
 struct devlink_port* mlxsw_core_port_devlink_port_get (int ,size_t) ;
 scalar_t__ mlxsw_sp_rx_listener (struct mlxsw_sp*,struct sk_buff*,size_t,struct mlxsw_sp_port*) ;
 struct devlink* priv_to_devlink (int ) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static void mlxsw_sp_rx_drop_listener(struct sk_buff *skb, u8 local_port,
          void *trap_ctx)
{
 struct devlink_port *in_devlink_port;
 struct mlxsw_sp_port *mlxsw_sp_port;
 struct mlxsw_sp *mlxsw_sp;
 struct devlink *devlink;

 mlxsw_sp = devlink_trap_ctx_priv(trap_ctx);
 mlxsw_sp_port = mlxsw_sp->ports[local_port];

 if (mlxsw_sp_rx_listener(mlxsw_sp, skb, local_port, mlxsw_sp_port))
  return;

 devlink = priv_to_devlink(mlxsw_sp->core);
 in_devlink_port = mlxsw_core_port_devlink_port_get(mlxsw_sp->core,
          local_port);
 skb_push(skb, ETH_HLEN);
 devlink_trap_report(devlink, skb, trap_ctx, in_devlink_port);
 consume_skb(skb);
}
