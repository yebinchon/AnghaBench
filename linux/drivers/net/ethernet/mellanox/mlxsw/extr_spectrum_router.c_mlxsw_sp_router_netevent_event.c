
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct neighbour {int dev; TYPE_4__* tbl; } ;
struct neigh_parms {int dev; TYPE_1__* tbl; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_netevent_work {int work; struct neighbour* n; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_3__* router; } ;
struct TYPE_8__ {int family; } ;
struct TYPE_6__ {unsigned long interval; } ;
struct TYPE_7__ {TYPE_2__ neighs_update; } ;
struct TYPE_5__ {int family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int DELAY_PROBE_TIME ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int NEIGH_VAR (struct neigh_parms*,int ) ;





 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 unsigned long jiffies_to_msecs (int ) ;
 struct mlxsw_sp_netevent_work* kzalloc (int,int ) ;
 int mlxsw_core_schedule_work (int *) ;
 int mlxsw_sp_port_dev_put (struct mlxsw_sp_port*) ;
 struct mlxsw_sp_port* mlxsw_sp_port_lower_dev_hold (int ) ;
 int mlxsw_sp_router_mp_hash_event_work ;
 int mlxsw_sp_router_neigh_event_work ;
 int mlxsw_sp_router_schedule_work (void*,struct notifier_block*,int ) ;
 int mlxsw_sp_router_update_priority_work ;
 int neigh_clone (struct neighbour*) ;

__attribute__((used)) static int mlxsw_sp_router_netevent_event(struct notifier_block *nb,
       unsigned long event, void *ptr)
{
 struct mlxsw_sp_netevent_work *net_work;
 struct mlxsw_sp_port *mlxsw_sp_port;
 struct mlxsw_sp *mlxsw_sp;
 unsigned long interval;
 struct neigh_parms *p;
 struct neighbour *n;

 switch (event) {
 case 132:
  p = ptr;


  if (!p->dev || (p->tbl->family != AF_INET &&
    p->tbl->family != AF_INET6))
   return NOTIFY_DONE;




  mlxsw_sp_port = mlxsw_sp_port_lower_dev_hold(p->dev);
  if (!mlxsw_sp_port)
   return NOTIFY_DONE;

  mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
  interval = jiffies_to_msecs(NEIGH_VAR(p, DELAY_PROBE_TIME));
  mlxsw_sp->router->neighs_update.interval = interval;

  mlxsw_sp_port_dev_put(mlxsw_sp_port);
  break;
 case 128:
  n = ptr;

  if (n->tbl->family != AF_INET && n->tbl->family != AF_INET6)
   return NOTIFY_DONE;

  mlxsw_sp_port = mlxsw_sp_port_lower_dev_hold(n->dev);
  if (!mlxsw_sp_port)
   return NOTIFY_DONE;

  net_work = kzalloc(sizeof(*net_work), GFP_ATOMIC);
  if (!net_work) {
   mlxsw_sp_port_dev_put(mlxsw_sp_port);
   return NOTIFY_BAD;
  }

  INIT_WORK(&net_work->work, mlxsw_sp_router_neigh_event_work);
  net_work->mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
  net_work->n = n;





  neigh_clone(n);
  mlxsw_core_schedule_work(&net_work->work);
  mlxsw_sp_port_dev_put(mlxsw_sp_port);
  break;
 case 130:
 case 129:
  return mlxsw_sp_router_schedule_work(ptr, nb,
    mlxsw_sp_router_mp_hash_event_work);

 case 131:
  return mlxsw_sp_router_schedule_work(ptr, nb,
    mlxsw_sp_router_update_priority_work);
 }

 return NOTIFY_DONE;
}
