
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlx5_eswitch_rep {int dummy; } ;
struct TYPE_2__ {struct mlx5_eswitch_rep* vport_reps; } ;
struct mlx5_eswitch {int total_vports; TYPE_1__ offloads; } ;


 int WARN_ON (int) ;
 int mlx5_eswitch_vport_num_to_index (struct mlx5_eswitch*,int ) ;

__attribute__((used)) static struct mlx5_eswitch_rep *mlx5_eswitch_get_rep(struct mlx5_eswitch *esw,
           u16 vport_num)
{
 int idx = mlx5_eswitch_vport_num_to_index(esw, vport_num);

 WARN_ON(idx > esw->total_vports - 1);
 return &esw->offloads.vport_reps[idx];
}
