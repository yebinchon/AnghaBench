
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx_queue {int index; int tx_ring_size; int tx_stop_threshold; int tx_wake_threshold; int tx_desc_area_size; scalar_t__ tx_desc_dma; struct tx_desc* tx_desc_area; int tx_desc_mapping; int tx_skb; int * tso_hdrs; scalar_t__ tso_hdrs_dma; scalar_t__ tx_used_desc; scalar_t__ tx_curr_desc; scalar_t__ tx_desc_count; } ;
struct tx_desc {scalar_t__ next_desc_ptr; scalar_t__ cmd_sts; } ;
struct mv643xx_eth_private {int tx_ring_size; int tx_desc_sram_size; TYPE_2__* dev; scalar_t__ tx_desc_sram_addr; struct tx_queue* txq; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MV643XX_MAX_SKB_DESCS ;
 int TSO_HEADER_SIZE ;
 void* dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int dma_free_coherent (int ,int,struct tx_desc*,scalar_t__) ;
 struct tx_desc* ioremap (scalar_t__,int) ;
 int iounmap (struct tx_desc*) ;
 int kcalloc (int,int,int ) ;
 int kfree (int ) ;
 int memset (struct tx_desc*,int ,int) ;
 int netdev_err (TYPE_2__*,char*,int) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int txq_init(struct mv643xx_eth_private *mp, int index)
{
 struct tx_queue *txq = mp->txq + index;
 struct tx_desc *tx_desc;
 int size;
 int ret;
 int i;

 txq->index = index;

 txq->tx_ring_size = mp->tx_ring_size;





 txq->tx_stop_threshold = txq->tx_ring_size - MV643XX_MAX_SKB_DESCS;
 txq->tx_wake_threshold = txq->tx_stop_threshold / 2;

 txq->tx_desc_count = 0;
 txq->tx_curr_desc = 0;
 txq->tx_used_desc = 0;

 size = txq->tx_ring_size * sizeof(struct tx_desc);

 if (index == 0 && size <= mp->tx_desc_sram_size) {
  txq->tx_desc_area = ioremap(mp->tx_desc_sram_addr,
      mp->tx_desc_sram_size);
  txq->tx_desc_dma = mp->tx_desc_sram_addr;
 } else {
  txq->tx_desc_area = dma_alloc_coherent(mp->dev->dev.parent,
             size, &txq->tx_desc_dma,
             GFP_KERNEL);
 }

 if (txq->tx_desc_area == ((void*)0)) {
  netdev_err(mp->dev,
      "can't allocate tx ring (%d bytes)\n", size);
  return -ENOMEM;
 }
 memset(txq->tx_desc_area, 0, size);

 txq->tx_desc_area_size = size;

 tx_desc = txq->tx_desc_area;
 for (i = 0; i < txq->tx_ring_size; i++) {
  struct tx_desc *txd = tx_desc + i;
  int nexti;

  nexti = i + 1;
  if (nexti == txq->tx_ring_size)
   nexti = 0;

  txd->cmd_sts = 0;
  txd->next_desc_ptr = txq->tx_desc_dma +
     nexti * sizeof(struct tx_desc);
 }

 txq->tx_desc_mapping = kcalloc(txq->tx_ring_size, sizeof(char),
           GFP_KERNEL);
 if (!txq->tx_desc_mapping) {
  ret = -ENOMEM;
  goto err_free_desc_area;
 }


 txq->tso_hdrs = dma_alloc_coherent(mp->dev->dev.parent,
        txq->tx_ring_size * TSO_HEADER_SIZE,
        &txq->tso_hdrs_dma, GFP_KERNEL);
 if (txq->tso_hdrs == ((void*)0)) {
  ret = -ENOMEM;
  goto err_free_desc_mapping;
 }
 skb_queue_head_init(&txq->tx_skb);

 return 0;

err_free_desc_mapping:
 kfree(txq->tx_desc_mapping);
err_free_desc_area:
 if (index == 0 && size <= mp->tx_desc_sram_size)
  iounmap(txq->tx_desc_area);
 else
  dma_free_coherent(mp->dev->dev.parent, txq->tx_desc_area_size,
      txq->tx_desc_area, txq->tx_desc_dma);
 return ret;
}
