
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct mlx5_eswitch_rep {TYPE_1__* rep_data; } ;
struct TYPE_6__ {TYPE_2__** rep_ops; } ;
struct mlx5_eswitch {int dev; TYPE_3__ offloads; } ;
struct TYPE_5__ {int (* load ) (int ,struct mlx5_eswitch_rep*) ;} ;
struct TYPE_4__ {int state; } ;


 int REP_LOADED ;
 scalar_t__ REP_REGISTERED ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 int atomic_set (int *,scalar_t__) ;
 int stub1 (int ,struct mlx5_eswitch_rep*) ;

__attribute__((used)) static int __esw_offloads_load_rep(struct mlx5_eswitch *esw,
       struct mlx5_eswitch_rep *rep, u8 rep_type)
{
 int err = 0;

 if (atomic_cmpxchg(&rep->rep_data[rep_type].state,
      REP_REGISTERED, REP_LOADED) == REP_REGISTERED) {
  err = esw->offloads.rep_ops[rep_type]->load(esw->dev, rep);
  if (err)
   atomic_set(&rep->rep_data[rep_type].state,
       REP_REGISTERED);
 }

 return err;
}
