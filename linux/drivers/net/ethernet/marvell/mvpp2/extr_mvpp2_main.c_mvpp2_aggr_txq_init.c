
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct mvpp2_tx_queue {int descs_dma; int last_desc; int next_desc_to_proc; int descs; } ;
struct mvpp2 {scalar_t__ hw_version; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MVPP21 ;
 int MVPP22_AGGR_TXQ_DESC_ADDR_OFFS ;
 int MVPP2_AGGR_TXQ_DESC_ADDR_REG (unsigned int) ;
 int MVPP2_AGGR_TXQ_DESC_SIZE_REG (unsigned int) ;
 int MVPP2_AGGR_TXQ_INDEX_REG (unsigned int) ;
 int MVPP2_AGGR_TXQ_SIZE ;
 int MVPP2_DESC_ALIGNED_SIZE ;
 int dma_alloc_coherent (int *,int,int*,int ) ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

__attribute__((used)) static int mvpp2_aggr_txq_init(struct platform_device *pdev,
          struct mvpp2_tx_queue *aggr_txq,
          unsigned int thread, struct mvpp2 *priv)
{
 u32 txq_dma;


 aggr_txq->descs = dma_alloc_coherent(&pdev->dev,
          MVPP2_AGGR_TXQ_SIZE * MVPP2_DESC_ALIGNED_SIZE,
          &aggr_txq->descs_dma, GFP_KERNEL);
 if (!aggr_txq->descs)
  return -ENOMEM;

 aggr_txq->last_desc = MVPP2_AGGR_TXQ_SIZE - 1;


 aggr_txq->next_desc_to_proc = mvpp2_read(priv,
       MVPP2_AGGR_TXQ_INDEX_REG(thread));




 if (priv->hw_version == MVPP21)
  txq_dma = aggr_txq->descs_dma;
 else
  txq_dma = aggr_txq->descs_dma >>
   MVPP22_AGGR_TXQ_DESC_ADDR_OFFS;

 mvpp2_write(priv, MVPP2_AGGR_TXQ_DESC_ADDR_REG(thread), txq_dma);
 mvpp2_write(priv, MVPP2_AGGR_TXQ_DESC_SIZE_REG(thread),
      MVPP2_AGGR_TXQ_SIZE);

 return 0;
}
