
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_dev {TYPE_3__* persist; } ;
struct TYPE_5__ {int * buf; } ;
struct mlx4_buf {int nbufs; int npages; TYPE_4__* page_list; int page_shift; TYPE_1__ direct; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int map; int buf; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int DIV_ROUND_UP (int,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 TYPE_4__* kcalloc (int,int,int ) ;
 int mlx4_buf_direct_alloc (struct mlx4_dev*,int,struct mlx4_buf*) ;
 int mlx4_buf_free (struct mlx4_dev*,int,struct mlx4_buf*) ;

int mlx4_buf_alloc(struct mlx4_dev *dev, int size, int max_direct,
     struct mlx4_buf *buf)
{
 if (size <= max_direct) {
  return mlx4_buf_direct_alloc(dev, size, buf);
 } else {
  dma_addr_t t;
  int i;

  buf->direct.buf = ((void*)0);
  buf->nbufs = DIV_ROUND_UP(size, PAGE_SIZE);
  buf->npages = buf->nbufs;
  buf->page_shift = PAGE_SHIFT;
  buf->page_list = kcalloc(buf->nbufs, sizeof(*buf->page_list),
        GFP_KERNEL);
  if (!buf->page_list)
   return -ENOMEM;

  for (i = 0; i < buf->nbufs; ++i) {
   buf->page_list[i].buf =
    dma_alloc_coherent(&dev->persist->pdev->dev,
         PAGE_SIZE, &t, GFP_KERNEL);
   if (!buf->page_list[i].buf)
    goto err_free;

   buf->page_list[i].map = t;
  }
 }

 return 0;

err_free:
 mlx4_buf_free(dev, size, buf);

 return -ENOMEM;
}
