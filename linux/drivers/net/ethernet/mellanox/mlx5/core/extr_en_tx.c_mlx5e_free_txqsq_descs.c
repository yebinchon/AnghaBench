
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct mlx5e_tx_wqe_info* wqe_info; } ;
struct mlx5e_txqsq {scalar_t__ cc; scalar_t__ pc; scalar_t__ dma_fifo_cc; int pdev; TYPE_1__ db; int wq; } ;
struct mlx5e_tx_wqe_info {scalar_t__ num_wqebbs; int num_dma; struct sk_buff* skb; } ;
struct mlx5e_sq_dma {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ mlx5_wq_cyc_ctr2ix (int *,scalar_t__) ;
 struct mlx5e_sq_dma* mlx5e_dma_get (struct mlx5e_txqsq*,int ) ;
 int mlx5e_ktls_tx_handle_resync_dump_comp (struct mlx5e_txqsq*,struct mlx5e_tx_wqe_info*,scalar_t__*) ;
 int mlx5e_tx_dma_unmap (int ,struct mlx5e_sq_dma*) ;

void mlx5e_free_txqsq_descs(struct mlx5e_txqsq *sq)
{
 struct mlx5e_tx_wqe_info *wi;
 struct sk_buff *skb;
 u32 dma_fifo_cc;
 u16 sqcc;
 u16 ci;
 int i;

 sqcc = sq->cc;
 dma_fifo_cc = sq->dma_fifo_cc;

 while (sqcc != sq->pc) {
  ci = mlx5_wq_cyc_ctr2ix(&sq->wq, sqcc);
  wi = &sq->db.wqe_info[ci];
  skb = wi->skb;

  if (!skb) {
   mlx5e_ktls_tx_handle_resync_dump_comp(sq, wi, &dma_fifo_cc);
   sqcc += wi->num_wqebbs;
   continue;
  }

  for (i = 0; i < wi->num_dma; i++) {
   struct mlx5e_sq_dma *dma =
    mlx5e_dma_get(sq, dma_fifo_cc++);

   mlx5e_tx_dma_unmap(sq->pdev, dma);
  }

  dev_kfree_skb_any(skb);
  sqcc += wi->num_wqebbs;
 }

 sq->dma_fifo_cc = dma_fifo_cc;
 sq->cc = sqcc;
}
