
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vport_reps; } ;
struct mlx5_eswitch {TYPE_1__ offloads; } ;


 int kfree (int ) ;

void esw_offloads_cleanup_reps(struct mlx5_eswitch *esw)
{
 kfree(esw->offloads.vport_reps);
}
