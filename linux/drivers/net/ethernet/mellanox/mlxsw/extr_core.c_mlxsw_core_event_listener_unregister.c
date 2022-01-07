
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_rx_listener {int trap_id; int local_port; int func; } ;
struct mlxsw_event_listener_item {int list; } ;
struct mlxsw_event_listener {int trap_id; } ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_PORT_DONT_CARE ;
 struct mlxsw_event_listener_item* __find_event_listener_item (struct mlxsw_core*,struct mlxsw_event_listener const*,void*) ;
 int kfree (struct mlxsw_event_listener_item*) ;
 int list_del (int *) ;
 int mlxsw_core_event_listener_func ;
 int mlxsw_core_rx_listener_unregister (struct mlxsw_core*,struct mlxsw_rx_listener const*,struct mlxsw_event_listener_item*) ;

void mlxsw_core_event_listener_unregister(struct mlxsw_core *mlxsw_core,
       const struct mlxsw_event_listener *el,
       void *priv)
{
 struct mlxsw_event_listener_item *el_item;
 const struct mlxsw_rx_listener rxl = {
  .func = mlxsw_core_event_listener_func,
  .local_port = MLXSW_PORT_DONT_CARE,
  .trap_id = el->trap_id,
 };

 el_item = __find_event_listener_item(mlxsw_core, el, priv);
 if (!el_item)
  return;
 mlxsw_core_rx_listener_unregister(mlxsw_core, &rxl, el_item);
 list_del(&el_item->list);
 kfree(el_item);
}
