
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int order; } ;
struct mlx4_mr {TYPE_1__ mtt; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_mtt_cleanup (struct mlx4_dev*,TYPE_1__*) ;

void mlx4_mr_rereg_mem_cleanup(struct mlx4_dev *dev, struct mlx4_mr *mr)
{
 mlx4_mtt_cleanup(dev, &mr->mtt);
 mr->mtt.order = -1;
}
