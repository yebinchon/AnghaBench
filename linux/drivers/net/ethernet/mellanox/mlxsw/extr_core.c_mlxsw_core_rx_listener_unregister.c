
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_rx_listener_item {int list; } ;
struct mlxsw_rx_listener {int dummy; } ;
struct mlxsw_core {int dummy; } ;


 struct mlxsw_rx_listener_item* __find_rx_listener_item (struct mlxsw_core*,struct mlxsw_rx_listener const*,void*) ;
 int kfree (struct mlxsw_rx_listener_item*) ;
 int list_del_rcu (int *) ;
 int synchronize_rcu () ;

void mlxsw_core_rx_listener_unregister(struct mlxsw_core *mlxsw_core,
           const struct mlxsw_rx_listener *rxl,
           void *priv)
{
 struct mlxsw_rx_listener_item *rxl_item;

 rxl_item = __find_rx_listener_item(mlxsw_core, rxl, priv);
 if (!rxl_item)
  return;
 list_del_rcu(&rxl_item->list);
 synchronize_rcu();
 kfree(rxl_item);
}
