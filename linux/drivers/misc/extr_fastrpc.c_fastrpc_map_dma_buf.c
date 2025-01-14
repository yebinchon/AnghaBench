
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct fastrpc_dma_buf_attachment {struct sg_table sgt; } ;
struct dma_buf_attachment {int dev; struct fastrpc_dma_buf_attachment* priv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ENOMEM ;
 struct sg_table* ERR_PTR (int ) ;
 int dma_map_sg (int ,int ,int ,int) ;

__attribute__((used)) static struct sg_table *
fastrpc_map_dma_buf(struct dma_buf_attachment *attachment,
      enum dma_data_direction dir)
{
 struct fastrpc_dma_buf_attachment *a = attachment->priv;
 struct sg_table *table;

 table = &a->sgt;

 if (!dma_map_sg(attachment->dev, table->sgl, table->nents, dir))
  return ERR_PTR(-ENOMEM);

 return table;
}
