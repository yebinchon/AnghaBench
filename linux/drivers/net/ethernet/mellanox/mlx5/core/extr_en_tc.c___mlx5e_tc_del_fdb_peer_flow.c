
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mlx5e_tc_flow {TYPE_5__* peer_flow; int peer; TYPE_4__* priv; } ;
struct TYPE_7__ {int peer_mutex; } ;
struct mlx5_eswitch {TYPE_1__ offloads; } ;
struct TYPE_11__ {int priv; } ;
struct TYPE_10__ {TYPE_3__* mdev; } ;
struct TYPE_8__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_9__ {TYPE_2__ priv; } ;


 int DUP ;
 int ESWITCH ;
 int flow_flag_clear (struct mlx5e_tc_flow*,int ) ;
 int flow_flag_test (struct mlx5e_tc_flow*,int ) ;
 int kvfree (TYPE_5__*) ;
 int list_del (int *) ;
 int mlx5e_tc_del_fdb_flow (int ,TYPE_5__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __mlx5e_tc_del_fdb_peer_flow(struct mlx5e_tc_flow *flow)
{
 struct mlx5_eswitch *esw = flow->priv->mdev->priv.eswitch;

 if (!flow_flag_test(flow, ESWITCH) ||
     !flow_flag_test(flow, DUP))
  return;

 mutex_lock(&esw->offloads.peer_mutex);
 list_del(&flow->peer);
 mutex_unlock(&esw->offloads.peer_mutex);

 flow_flag_clear(flow, DUP);

 mlx5e_tc_del_fdb_flow(flow->peer_flow->priv, flow->peer_flow);
 kvfree(flow->peer_flow);
 flow->peer_flow = ((void*)0);
}
