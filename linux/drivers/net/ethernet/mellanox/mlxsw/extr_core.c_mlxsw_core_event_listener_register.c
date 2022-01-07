
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_rx_listener {int trap_id; int local_port; int func; } ;
struct mlxsw_event_listener {int trap_id; } ;
struct mlxsw_event_listener_item {int list; void* priv; struct mlxsw_event_listener el; } ;
struct mlxsw_core {int event_listener_list; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_PORT_DONT_CARE ;
 struct mlxsw_event_listener_item* __find_event_listener_item (struct mlxsw_core*,struct mlxsw_event_listener const*,void*) ;
 int kfree (struct mlxsw_event_listener_item*) ;
 struct mlxsw_event_listener_item* kmalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int mlxsw_core_event_listener_func ;
 int mlxsw_core_rx_listener_register (struct mlxsw_core*,struct mlxsw_rx_listener const*,struct mlxsw_event_listener_item*) ;

int mlxsw_core_event_listener_register(struct mlxsw_core *mlxsw_core,
           const struct mlxsw_event_listener *el,
           void *priv)
{
 int err;
 struct mlxsw_event_listener_item *el_item;
 const struct mlxsw_rx_listener rxl = {
  .func = mlxsw_core_event_listener_func,
  .local_port = MLXSW_PORT_DONT_CARE,
  .trap_id = el->trap_id,
 };

 el_item = __find_event_listener_item(mlxsw_core, el, priv);
 if (el_item)
  return -EEXIST;
 el_item = kmalloc(sizeof(*el_item), GFP_KERNEL);
 if (!el_item)
  return -ENOMEM;
 el_item->el = *el;
 el_item->priv = priv;

 err = mlxsw_core_rx_listener_register(mlxsw_core, &rxl, el_item);
 if (err)
  goto err_rx_listener_register;




 list_add_rcu(&el_item->list, &mlxsw_core->event_listener_list);

 return 0;

err_rx_listener_register:
 kfree(el_item);
 return err;
}
