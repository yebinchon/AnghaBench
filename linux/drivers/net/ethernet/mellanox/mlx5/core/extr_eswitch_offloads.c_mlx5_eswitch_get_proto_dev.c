
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct mlx5_eswitch_rep {TYPE_1__* rep_data; } ;
struct TYPE_5__ {TYPE_3__** rep_ops; } ;
struct mlx5_eswitch {TYPE_2__ offloads; } ;
struct TYPE_6__ {void* (* get_proto_dev ) (struct mlx5_eswitch_rep*) ;} ;
struct TYPE_4__ {int state; } ;


 scalar_t__ REP_LOADED ;
 scalar_t__ atomic_read (int *) ;
 struct mlx5_eswitch_rep* mlx5_eswitch_get_rep (struct mlx5_eswitch*,int ) ;
 void* stub1 (struct mlx5_eswitch_rep*) ;

void *mlx5_eswitch_get_proto_dev(struct mlx5_eswitch *esw,
     u16 vport,
     u8 rep_type)
{
 struct mlx5_eswitch_rep *rep;

 rep = mlx5_eswitch_get_rep(esw, vport);

 if (atomic_read(&rep->rep_data[rep_type].state) == REP_LOADED &&
     esw->offloads.rep_ops[rep_type]->get_proto_dev)
  return esw->offloads.rep_ops[rep_type]->get_proto_dev(rep);
 return ((void*)0);
}
