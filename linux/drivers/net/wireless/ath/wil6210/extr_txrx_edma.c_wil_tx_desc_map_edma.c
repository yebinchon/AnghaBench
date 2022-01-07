
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union wil_tx_desc {int enhanced; } ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_4__ {int* d; } ;
struct TYPE_3__ {int length; int addr_high_high; int addr; } ;
struct wil_tx_enhanced_desc {TYPE_2__ mac; TYPE_1__ dma; } ;
typedef int dma_addr_t ;


 int BIT (int ) ;
 int MAC_CFG_DESC_TX_2_L2_TRANSLATION_TYPE_POS ;
 int MAC_CFG_DESC_TX_2_SNAP_HDR_INSERTION_EN_POS ;
 int WIL_EDMA_DESC_TX_MAC_CFG_0_QID_POS ;
 int cpu_to_le16 (int ) ;
 int memset (struct wil_tx_enhanced_desc*,int ,int) ;
 int wil_desc_set_addr_edma (int *,int *,int ) ;

__attribute__((used)) static int wil_tx_desc_map_edma(union wil_tx_desc *desc,
    dma_addr_t pa,
    u32 len,
    int ring_index)
{
 struct wil_tx_enhanced_desc *d =
  (struct wil_tx_enhanced_desc *)&desc->enhanced;

 memset(d, 0, sizeof(struct wil_tx_enhanced_desc));

 wil_desc_set_addr_edma(&d->dma.addr, &d->dma.addr_high_high, pa);


 d->dma.length = cpu_to_le16((u16)len);
 d->mac.d[0] = (ring_index << WIL_EDMA_DESC_TX_MAC_CFG_0_QID_POS);



 d->mac.d[2] = BIT(MAC_CFG_DESC_TX_2_SNAP_HDR_INSERTION_EN_POS) |
        (0x3 << MAC_CFG_DESC_TX_2_L2_TRANSLATION_TYPE_POS);

 return 0;
}
