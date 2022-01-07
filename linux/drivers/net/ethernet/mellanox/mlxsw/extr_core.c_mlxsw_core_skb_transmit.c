
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mlxsw_tx_info {int dummy; } ;
struct mlxsw_core {int bus_priv; TYPE_1__* bus; } ;
struct TYPE_2__ {int (* skb_transmit ) (int ,struct sk_buff*,struct mlxsw_tx_info const*) ;} ;


 int stub1 (int ,struct sk_buff*,struct mlxsw_tx_info const*) ;

int mlxsw_core_skb_transmit(struct mlxsw_core *mlxsw_core, struct sk_buff *skb,
       const struct mlxsw_tx_info *tx_info)
{
 return mlxsw_core->bus->skb_transmit(mlxsw_core->bus_priv, skb,
          tx_info);
}
