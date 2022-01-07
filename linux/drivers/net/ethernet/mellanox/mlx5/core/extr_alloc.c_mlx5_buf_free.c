
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_frag_buf {TYPE_1__* frags; int size; } ;
struct mlx5_core_dev {int device; } ;
struct TYPE_2__ {int map; int buf; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (TYPE_1__*) ;

void mlx5_buf_free(struct mlx5_core_dev *dev, struct mlx5_frag_buf *buf)
{
 dma_free_coherent(dev->device, buf->size, buf->frags->buf,
     buf->frags->map);

 kfree(buf->frags);
}
