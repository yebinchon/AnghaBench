
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_frag_buf {int dummy; } ;
struct TYPE_2__ {int numa_node; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_buf_alloc_node (struct mlx5_core_dev*,int,struct mlx5_frag_buf*,int ) ;

int mlx5_buf_alloc(struct mlx5_core_dev *dev,
     int size, struct mlx5_frag_buf *buf)
{
 return mlx5_buf_alloc_node(dev, size, buf, dev->priv.numa_node);
}
