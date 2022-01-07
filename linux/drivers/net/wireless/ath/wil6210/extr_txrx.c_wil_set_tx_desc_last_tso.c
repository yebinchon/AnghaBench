
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d0; } ;
struct vring_tx_desc {TYPE_1__ dma; } ;


 int DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS ;
 int wil_tso_type_lst ;

__attribute__((used)) static inline void wil_set_tx_desc_last_tso(volatile struct vring_tx_desc *d)
{
 d->dma.d0 |= wil_tso_type_lst <<
    DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS;
}
