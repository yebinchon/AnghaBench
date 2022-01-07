
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eq_table; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_3__ {unsigned int num_comp_eqs; } ;



unsigned int mlx5_comp_vectors_count(struct mlx5_core_dev *dev)
{
 return dev->priv.eq_table->num_comp_eqs;
}
