
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct enetc_hw {scalar_t__ reg; } ;
struct enetc_bdr {int index; scalar_t__ idr; scalar_t__ rcir; TYPE_1__* ndev; int bd_count; int bd_dma_base; } ;
struct TYPE_2__ {int features; } ;


 scalar_t__ ENETC_BDR (int ,int,int ) ;
 int ENETC_RBBAR0 ;
 int ENETC_RBBAR1 ;
 int ENETC_RBBSR ;
 int ENETC_RBCIR ;
 int ENETC_RBICIR0 ;
 int ENETC_RBICIR0_ICEN ;
 int ENETC_RBLENR ;
 int ENETC_RBMR ;
 int ENETC_RBMR_BDS ;
 int ENETC_RBMR_EN ;
 int ENETC_RBMR_VTE ;
 int ENETC_RBPIR ;
 int ENETC_RTBLENR_LEN (int ) ;
 int ENETC_RXB_DMA_SIZE ;
 scalar_t__ ENETC_SIRXIDR ;
 int IS_ALIGNED (int ,int) ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int RX ;
 int WARN_ON (int) ;
 int enetc_bd_unused (struct enetc_bdr*) ;
 int enetc_refill_rx_ring (struct enetc_bdr*,int ) ;
 int enetc_rxbdr_wr (struct enetc_hw*,int,int ,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void enetc_setup_rxbdr(struct enetc_hw *hw, struct enetc_bdr *rx_ring)
{
 int idx = rx_ring->index;
 u32 rbmr;

 enetc_rxbdr_wr(hw, idx, ENETC_RBBAR0,
         lower_32_bits(rx_ring->bd_dma_base));

 enetc_rxbdr_wr(hw, idx, ENETC_RBBAR1,
         upper_32_bits(rx_ring->bd_dma_base));

 WARN_ON(!IS_ALIGNED(rx_ring->bd_count, 64));
 enetc_rxbdr_wr(hw, idx, ENETC_RBLENR,
         ENETC_RTBLENR_LEN(rx_ring->bd_count));

 enetc_rxbdr_wr(hw, idx, ENETC_RBBSR, ENETC_RXB_DMA_SIZE);

 enetc_rxbdr_wr(hw, idx, ENETC_RBPIR, 0);


 enetc_rxbdr_wr(hw, idx, ENETC_RBICIR0, ENETC_RBICIR0_ICEN | 0x1);

 rbmr = ENETC_RBMR_EN;



 if (rx_ring->ndev->features & NETIF_F_HW_VLAN_CTAG_RX)
  rbmr |= ENETC_RBMR_VTE;

 rx_ring->rcir = hw->reg + ENETC_BDR(RX, idx, ENETC_RBCIR);
 rx_ring->idr = hw->reg + ENETC_SIRXIDR;

 enetc_refill_rx_ring(rx_ring, enetc_bd_unused(rx_ring));


 enetc_rxbdr_wr(hw, idx, ENETC_RBMR, rbmr);
}
