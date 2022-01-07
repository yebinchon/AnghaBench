
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sw_rx_bd {int * data; } ;
struct bnx2x_fastpath {int rx_buf_size; struct bnx2x_agg_info* tpa_info; } ;
struct bnx2x_agg_info {scalar_t__ tpa_state; struct sw_rx_bd first_buf; } ;
struct bnx2x {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BNX2X_TPA_START ;
 int DMA_FROM_DEVICE ;
 int DP (int ,char*,int) ;
 int NETIF_MSG_IFDOWN ;
 int bnx2x_frag_free (struct bnx2x_fastpath*,int *) ;
 int dma_unmap_addr (struct sw_rx_bd*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int mapping ;

__attribute__((used)) static void bnx2x_free_tpa_pool(struct bnx2x *bp,
    struct bnx2x_fastpath *fp, int last)
{
 int i;

 for (i = 0; i < last; i++) {
  struct bnx2x_agg_info *tpa_info = &fp->tpa_info[i];
  struct sw_rx_bd *first_buf = &tpa_info->first_buf;
  u8 *data = first_buf->data;

  if (data == ((void*)0)) {
   DP(NETIF_MSG_IFDOWN, "tpa bin %d empty on free\n", i);
   continue;
  }
  if (tpa_info->tpa_state == BNX2X_TPA_START)
   dma_unmap_single(&bp->pdev->dev,
      dma_unmap_addr(first_buf, mapping),
      fp->rx_buf_size, DMA_FROM_DEVICE);
  bnx2x_frag_free(fp, data);
  first_buf->data = ((void*)0);
 }
}
