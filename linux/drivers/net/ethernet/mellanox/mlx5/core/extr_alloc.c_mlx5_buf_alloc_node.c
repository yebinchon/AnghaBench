
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_frag_buf {int size; int npages; int page_shift; TYPE_1__* frags; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int map; int buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 scalar_t__ get_order (int) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mlx5_dma_zalloc_coherent_node (struct mlx5_core_dev*,int,int*,int) ;

int mlx5_buf_alloc_node(struct mlx5_core_dev *dev, int size,
   struct mlx5_frag_buf *buf, int node)
{
 dma_addr_t t;

 buf->size = size;
 buf->npages = 1;
 buf->page_shift = (u8)get_order(size) + PAGE_SHIFT;

 buf->frags = kzalloc(sizeof(*buf->frags), GFP_KERNEL);
 if (!buf->frags)
  return -ENOMEM;

 buf->frags->buf = mlx5_dma_zalloc_coherent_node(dev, size,
         &t, node);
 if (!buf->frags->buf)
  goto err_out;

 buf->frags->map = t;

 while (t & ((1 << buf->page_shift) - 1)) {
  --buf->page_shift;
  buf->npages *= 2;
 }

 return 0;
err_out:
 kfree(buf->frags);
 return -ENOMEM;
}
