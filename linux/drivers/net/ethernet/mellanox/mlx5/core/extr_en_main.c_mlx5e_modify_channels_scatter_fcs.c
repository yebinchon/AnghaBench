
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_channels {int num; TYPE_1__** c; } ;
struct TYPE_2__ {int rq; } ;


 int mlx5e_modify_rq_scatter_fcs (int *,int) ;

__attribute__((used)) static int mlx5e_modify_channels_scatter_fcs(struct mlx5e_channels *chs, bool enable)
{
 int err = 0;
 int i;

 for (i = 0; i < chs->num; i++) {
  err = mlx5e_modify_rq_scatter_fcs(&chs->c[i]->rq, enable);
  if (err)
   return err;
 }

 return 0;
}
