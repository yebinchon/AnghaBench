
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_srq_table {int bitmap; int tree; int lock; } ;
struct TYPE_3__ {int reserved_srqs; scalar_t__ num_srqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {struct mlx4_srq_table srq_table; } ;


 int GFP_ATOMIC ;
 int INIT_RADIX_TREE (int *,int ) ;
 int mlx4_bitmap_init (int *,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int spin_lock_init (int *) ;

int mlx4_init_srq_table(struct mlx4_dev *dev)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;
 int err;

 spin_lock_init(&srq_table->lock);
 INIT_RADIX_TREE(&srq_table->tree, GFP_ATOMIC);
 if (mlx4_is_slave(dev))
  return 0;

 err = mlx4_bitmap_init(&srq_table->bitmap, dev->caps.num_srqs,
          dev->caps.num_srqs - 1, dev->caps.reserved_srqs, 0);
 if (err)
  return err;

 return 0;
}
