
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int count; int dma_addr; } ;
struct TYPE_8__ {int count; int dma_addr; } ;
struct TYPE_10__ {TYPE_4__ rrd; TYPE_3__ rfd; } ;
struct TYPE_6__ {int count; int dma_addr; } ;
struct TYPE_7__ {TYPE_1__ tpd; } ;
struct emac_adapter {int rxbuf_size; scalar_t__ base; TYPE_5__ rx_q; TYPE_2__ tx_q; } ;


 scalar_t__ EMAC_DESC_CTRL_0 ;
 scalar_t__ EMAC_DESC_CTRL_1 ;
 scalar_t__ EMAC_DESC_CTRL_11 ;
 scalar_t__ EMAC_DESC_CTRL_2 ;
 scalar_t__ EMAC_DESC_CTRL_3 ;
 scalar_t__ EMAC_DESC_CTRL_4 ;
 scalar_t__ EMAC_DESC_CTRL_5 ;
 scalar_t__ EMAC_DESC_CTRL_6 ;
 scalar_t__ EMAC_DESC_CTRL_8 ;
 scalar_t__ EMAC_DESC_CTRL_9 ;
 scalar_t__ EMAC_INTER_SRAM_PART9 ;
 int RFD_RING_SIZE_BMSK ;
 int RRD_RING_SIZE_BMSK ;
 int RX_BUFFER_SIZE_BMSK ;
 int TPD_RING_SIZE_BMSK ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void emac_mac_dma_rings_config(struct emac_adapter *adpt)
{

 writel(upper_32_bits(adpt->tx_q.tpd.dma_addr),
        adpt->base + EMAC_DESC_CTRL_1);

 writel(lower_32_bits(adpt->tx_q.tpd.dma_addr),
        adpt->base + EMAC_DESC_CTRL_8);

 writel(adpt->tx_q.tpd.count & TPD_RING_SIZE_BMSK,
        adpt->base + EMAC_DESC_CTRL_9);


 writel(upper_32_bits(adpt->rx_q.rfd.dma_addr),
        adpt->base + EMAC_DESC_CTRL_0);

 writel(lower_32_bits(adpt->rx_q.rfd.dma_addr),
        adpt->base + EMAC_DESC_CTRL_2);
 writel(lower_32_bits(adpt->rx_q.rrd.dma_addr),
        adpt->base + EMAC_DESC_CTRL_5);

 writel(adpt->rx_q.rfd.count & RFD_RING_SIZE_BMSK,
        adpt->base + EMAC_DESC_CTRL_3);
 writel(adpt->rx_q.rrd.count & RRD_RING_SIZE_BMSK,
        adpt->base + EMAC_DESC_CTRL_6);

 writel(adpt->rxbuf_size & RX_BUFFER_SIZE_BMSK,
        adpt->base + EMAC_DESC_CTRL_4);

 writel(0, adpt->base + EMAC_DESC_CTRL_11);




 writel(1, adpt->base + EMAC_INTER_SRAM_PART9);
}
