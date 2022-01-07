
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_dev {TYPE_3__* persist; } ;
struct TYPE_5__ {int map; scalar_t__ buf; } ;
struct mlx4_buf {int nbufs; TYPE_4__* page_list; TYPE_1__ direct; } ;
struct TYPE_8__ {int map; scalar_t__ buf; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (TYPE_4__*) ;

void mlx4_buf_free(struct mlx4_dev *dev, int size, struct mlx4_buf *buf)
{
 if (buf->nbufs == 1) {
  dma_free_coherent(&dev->persist->pdev->dev, size,
      buf->direct.buf, buf->direct.map);
 } else {
  int i;

  for (i = 0; i < buf->nbufs; ++i)
   if (buf->page_list[i].buf)
    dma_free_coherent(&dev->persist->pdev->dev,
        PAGE_SIZE,
        buf->page_list[i].buf,
        buf->page_list[i].map);
  kfree(buf->page_list);
 }
}
