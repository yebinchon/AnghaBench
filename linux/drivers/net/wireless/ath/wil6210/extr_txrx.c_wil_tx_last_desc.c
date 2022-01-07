
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d0; } ;
struct vring_tx_desc {TYPE_1__ dma; } ;


 int BIT (int ) ;
 int DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS ;
 int DMA_CFG_DESC_TX_0_CMD_EOP_POS ;
 int DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS ;

__attribute__((used)) static inline void wil_tx_last_desc(struct vring_tx_desc *d)
{
 d->dma.d0 |= BIT(DMA_CFG_DESC_TX_0_CMD_EOP_POS) |
       BIT(DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS) |
       BIT(DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS);
}
