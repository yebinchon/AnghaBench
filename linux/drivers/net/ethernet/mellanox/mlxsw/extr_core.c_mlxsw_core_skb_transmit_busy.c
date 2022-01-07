
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_tx_info {int dummy; } ;
struct mlxsw_core {int bus_priv; TYPE_1__* bus; } ;
struct TYPE_2__ {int (* skb_transmit_busy ) (int ,struct mlxsw_tx_info const*) ;} ;


 int stub1 (int ,struct mlxsw_tx_info const*) ;

bool mlxsw_core_skb_transmit_busy(struct mlxsw_core *mlxsw_core,
      const struct mlxsw_tx_info *tx_info)
{
 return mlxsw_core->bus->skb_transmit_busy(mlxsw_core->bus_priv,
        tx_info);
}
