
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_flow_root_namespace {int dummy; } ;
struct mlx5_eswitch {TYPE_3__* dev; } ;
struct TYPE_5__ {TYPE_1__* steering; } ;
struct TYPE_6__ {TYPE_2__ priv; } ;
struct TYPE_4__ {struct mlx5_flow_root_namespace* fdb_root_ns; } ;


 int mlx5_flow_namespace_set_peer (struct mlx5_flow_root_namespace*,struct mlx5_flow_root_namespace*) ;

__attribute__((used)) static int mlx5_esw_offloads_set_ns_peer(struct mlx5_eswitch *esw,
      struct mlx5_eswitch *peer_esw,
      bool pair)
{
 struct mlx5_flow_root_namespace *peer_ns;
 struct mlx5_flow_root_namespace *ns;
 int err;

 peer_ns = peer_esw->dev->priv.steering->fdb_root_ns;
 ns = esw->dev->priv.steering->fdb_root_ns;

 if (pair) {
  err = mlx5_flow_namespace_set_peer(ns, peer_ns);
  if (err)
   return err;

  err = mlx5_flow_namespace_set_peer(peer_ns, ns);
  if (err) {
   mlx5_flow_namespace_set_peer(ns, ((void*)0));
   return err;
  }
 } else {
  mlx5_flow_namespace_set_peer(ns, ((void*)0));
  mlx5_flow_namespace_set_peer(peer_ns, ((void*)0));
 }

 return 0;
}
