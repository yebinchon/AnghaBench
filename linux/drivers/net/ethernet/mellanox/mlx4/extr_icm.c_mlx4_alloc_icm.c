
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_icm_chunk {int coherent; size_t npages; scalar_t__ nsg; int * sg; int * buf; int list; } ;
struct mlx4_icm {int chunk_list; scalar_t__ refcount; } ;
struct mlx4_dev {TYPE_2__* persist; int numa_node; } ;
typedef int gfp_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int BUG_ON (int) ;
 int DMA_BIDIRECTIONAL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX4_ICM_ALLOC_SIZE ;
 size_t MLX4_ICM_CHUNK_LEN ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_HIGHMEM ;
 int __GFP_NOWARN ;
 void* dma_map_sg (int *,int *,size_t,int ) ;
 int get_order (int ) ;
 struct mlx4_icm* kmalloc (int,int) ;
 struct mlx4_icm* kmalloc_node (int,int,int ) ;
 struct mlx4_icm_chunk* kzalloc (int,int) ;
 struct mlx4_icm_chunk* kzalloc_node (int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlx4_alloc_icm_coherent (int *,int *,int,int) ;
 int mlx4_alloc_icm_pages (int *,int,int,int ) ;
 int mlx4_free_icm (struct mlx4_dev*,struct mlx4_icm*,int) ;
 int sg_init_table (int *,size_t) ;

struct mlx4_icm *mlx4_alloc_icm(struct mlx4_dev *dev, int npages,
    gfp_t gfp_mask, int coherent)
{
 struct mlx4_icm *icm;
 struct mlx4_icm_chunk *chunk = ((void*)0);
 int cur_order;
 gfp_t mask;
 int ret;


 BUG_ON(coherent && (gfp_mask & __GFP_HIGHMEM));

 icm = kmalloc_node(sizeof(*icm),
      gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN),
      dev->numa_node);
 if (!icm) {
  icm = kmalloc(sizeof(*icm),
         gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN));
  if (!icm)
   return ((void*)0);
 }

 icm->refcount = 0;
 INIT_LIST_HEAD(&icm->chunk_list);

 cur_order = get_order(MLX4_ICM_ALLOC_SIZE);

 while (npages > 0) {
  if (!chunk) {
   chunk = kzalloc_node(sizeof(*chunk),
          gfp_mask & ~(__GFP_HIGHMEM |
         __GFP_NOWARN),
          dev->numa_node);
   if (!chunk) {
    chunk = kzalloc(sizeof(*chunk),
      gfp_mask & ~(__GFP_HIGHMEM |
            __GFP_NOWARN));
    if (!chunk)
     goto fail;
   }
   chunk->coherent = coherent;

   if (!coherent)
    sg_init_table(chunk->sg, MLX4_ICM_CHUNK_LEN);
   list_add_tail(&chunk->list, &icm->chunk_list);
  }

  while (1 << cur_order > npages)
   --cur_order;

  mask = gfp_mask;
  if (cur_order)
   mask &= ~__GFP_DIRECT_RECLAIM;

  if (coherent)
   ret = mlx4_alloc_icm_coherent(&dev->persist->pdev->dev,
      &chunk->buf[chunk->npages],
      cur_order, mask);
  else
   ret = mlx4_alloc_icm_pages(&chunk->sg[chunk->npages],
         cur_order, mask,
         dev->numa_node);

  if (ret) {
   if (--cur_order < 0)
    goto fail;
   else
    continue;
  }

  ++chunk->npages;

  if (coherent)
   ++chunk->nsg;
  else if (chunk->npages == MLX4_ICM_CHUNK_LEN) {
   chunk->nsg = dma_map_sg(&dev->persist->pdev->dev,
      chunk->sg, chunk->npages,
      DMA_BIDIRECTIONAL);

   if (chunk->nsg <= 0)
    goto fail;
  }

  if (chunk->npages == MLX4_ICM_CHUNK_LEN)
   chunk = ((void*)0);

  npages -= 1 << cur_order;
 }

 if (!coherent && chunk) {
  chunk->nsg = dma_map_sg(&dev->persist->pdev->dev, chunk->sg,
     chunk->npages, DMA_BIDIRECTIONAL);

  if (chunk->nsg <= 0)
   goto fail;
 }

 return icm;

fail:
 mlx4_free_icm(dev, icm, coherent);
 return ((void*)0);
}
