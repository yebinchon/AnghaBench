
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_listener; int event_listener; } ;
struct mlxsw_listener {TYPE_1__ u; scalar_t__ is_event; } ;
struct mlxsw_core {int dummy; } ;


 int mlxsw_core_event_listener_unregister (struct mlxsw_core*,int *,void*) ;
 int mlxsw_core_rx_listener_unregister (struct mlxsw_core*,int *,void*) ;

__attribute__((used)) static void mlxsw_core_listener_unregister(struct mlxsw_core *mlxsw_core,
          const struct mlxsw_listener *listener,
          void *priv)
{
 if (listener->is_event)
  mlxsw_core_event_listener_unregister(mlxsw_core,
           &listener->u.event_listener,
           priv);
 else
  mlxsw_core_rx_listener_unregister(mlxsw_core,
        &listener->u.rx_listener,
        priv);
}
