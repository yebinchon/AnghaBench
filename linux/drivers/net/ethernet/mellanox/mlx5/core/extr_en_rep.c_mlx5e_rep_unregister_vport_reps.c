
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eswitch {int dummy; } ;
struct TYPE_2__ {struct mlx5_eswitch* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int REP_ETH ;
 int mlx5_eswitch_unregister_vport_reps (struct mlx5_eswitch*,int ) ;

void mlx5e_rep_unregister_vport_reps(struct mlx5_core_dev *mdev)
{
 struct mlx5_eswitch *esw = mdev->priv.eswitch;

 mlx5_eswitch_unregister_vport_reps(esw, REP_ETH);
}
