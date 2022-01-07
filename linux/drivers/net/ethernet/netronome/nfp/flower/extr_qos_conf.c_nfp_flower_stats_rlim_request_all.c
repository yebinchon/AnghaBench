
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nfp_reprs {int num_reprs; int * reprs; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct TYPE_3__ {int netdev_port_id; } ;
struct nfp_flower_repr_priv {TYPE_1__ qos_table; } ;
struct nfp_flower_priv {TYPE_2__* app; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int * reprs; } ;


 size_t NFP_REPR_TYPE_VF ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_flower_stats_rlim_request (struct nfp_flower_priv*,int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void
nfp_flower_stats_rlim_request_all(struct nfp_flower_priv *fl_priv)
{
 struct nfp_reprs *repr_set;
 int i;

 rcu_read_lock();
 repr_set = rcu_dereference(fl_priv->app->reprs[NFP_REPR_TYPE_VF]);
 if (!repr_set)
  goto exit_unlock_rcu;

 for (i = 0; i < repr_set->num_reprs; i++) {
  struct net_device *netdev;

  netdev = rcu_dereference(repr_set->reprs[i]);
  if (netdev) {
   struct nfp_repr *priv = netdev_priv(netdev);
   struct nfp_flower_repr_priv *repr_priv;
   u32 netdev_port_id;

   repr_priv = priv->app_priv;
   netdev_port_id = repr_priv->qos_table.netdev_port_id;
   if (!netdev_port_id)
    continue;

   nfp_flower_stats_rlim_request(fl_priv, netdev_port_id);
  }
 }

exit_unlock_rcu:
 rcu_read_unlock();
}
