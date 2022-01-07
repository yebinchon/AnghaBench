
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* d; scalar_t__ ucode_cmd; } ;
struct TYPE_3__ {int d0; int length; scalar_t__ status; scalar_t__ error; scalar_t__ b11; scalar_t__ ip_length; int addr; } ;
struct vring_tx_desc {TYPE_2__ mac; TYPE_1__ dma; } ;
union wil_tx_desc {struct vring_tx_desc legacy; } ;
typedef scalar_t__ u32 ;
typedef int u16 ;
typedef int dma_addr_t ;


 int BIT (int ) ;
 int DMA_CFG_DESC_TX_0_QID_POS ;
 int MAC_CFG_DESC_TX_2_L2_TRANSLATION_TYPE_POS ;
 int MAC_CFG_DESC_TX_2_SNAP_HDR_INSERTION_EN_POS ;
 int cpu_to_le16 (int ) ;
 int wil_desc_addr_set (int *,int ) ;

__attribute__((used)) static int wil_tx_desc_map(union wil_tx_desc *desc, dma_addr_t pa,
      u32 len, int vring_index)
{
 struct vring_tx_desc *d = &desc->legacy;

 wil_desc_addr_set(&d->dma.addr, pa);
 d->dma.ip_length = 0;

 d->dma.b11 = 0 ;
 d->dma.error = 0;
 d->dma.status = 0;
 d->dma.length = cpu_to_le16((u16)len);
 d->dma.d0 = (vring_index << DMA_CFG_DESC_TX_0_QID_POS);
 d->mac.d[0] = 0;
 d->mac.d[1] = 0;
 d->mac.d[2] = 0;
 d->mac.ucode_cmd = 0;

 d->mac.d[2] = BIT(MAC_CFG_DESC_TX_2_SNAP_HDR_INSERTION_EN_POS) |
        (1 << MAC_CFG_DESC_TX_2_L2_TRANSLATION_TYPE_POS);

 return 0;
}
