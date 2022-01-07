
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_comp_vectors; int reserved_eqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;



__attribute__((used)) static int mlx4_num_eq_uar(struct mlx4_dev *dev)
{





 return (dev->caps.num_comp_vectors + 1 + dev->caps.reserved_eqs) / 4 -
  dev->caps.reserved_eqs / 4 + 1;
}
