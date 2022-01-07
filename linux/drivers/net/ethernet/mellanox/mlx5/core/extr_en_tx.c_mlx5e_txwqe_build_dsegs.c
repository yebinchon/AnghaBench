
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct mlx5e_txqsq {int mkey_be; int pdev; } ;
struct mlx5_wqe_data_seg {void* byte_count; int lkey; void* addr; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int MLX5E_DMA_MAP_PAGE ;
 int MLX5E_DMA_MAP_SINGLE ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int dma_map_single (int ,unsigned char*,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int mlx5e_dma_push (struct mlx5e_txqsq*,int ,int,int ) ;
 int mlx5e_dma_unmap_wqe_err (struct mlx5e_txqsq*,int) ;
 int skb_frag_dma_map (int ,int *,int ,int,int ) ;
 int skb_frag_size (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int
mlx5e_txwqe_build_dsegs(struct mlx5e_txqsq *sq, struct sk_buff *skb,
   unsigned char *skb_data, u16 headlen,
   struct mlx5_wqe_data_seg *dseg)
{
 dma_addr_t dma_addr = 0;
 u8 num_dma = 0;
 int i;

 if (headlen) {
  dma_addr = dma_map_single(sq->pdev, skb_data, headlen,
       DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(sq->pdev, dma_addr)))
   goto dma_unmap_wqe_err;

  dseg->addr = cpu_to_be64(dma_addr);
  dseg->lkey = sq->mkey_be;
  dseg->byte_count = cpu_to_be32(headlen);

  mlx5e_dma_push(sq, dma_addr, headlen, MLX5E_DMA_MAP_SINGLE);
  num_dma++;
  dseg++;
 }

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  int fsz = skb_frag_size(frag);

  dma_addr = skb_frag_dma_map(sq->pdev, frag, 0, fsz,
         DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(sq->pdev, dma_addr)))
   goto dma_unmap_wqe_err;

  dseg->addr = cpu_to_be64(dma_addr);
  dseg->lkey = sq->mkey_be;
  dseg->byte_count = cpu_to_be32(fsz);

  mlx5e_dma_push(sq, dma_addr, fsz, MLX5E_DMA_MAP_PAGE);
  num_dma++;
  dseg++;
 }

 return num_dma;

dma_unmap_wqe_err:
 mlx5e_dma_unmap_wqe_err(sq, num_dma);
 return -ENOMEM;
}
