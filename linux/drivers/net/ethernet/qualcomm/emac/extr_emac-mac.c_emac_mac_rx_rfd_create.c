
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ produce_idx; scalar_t__ count; } ;
struct emac_rx_queue {TYPE_1__ rfd; } ;
struct emac_adapter {int rfd_size; } ;
typedef int dma_addr_t ;


 int * EMAC_RFD (struct emac_rx_queue*,int ,scalar_t__) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void emac_mac_rx_rfd_create(struct emac_adapter *adpt,
       struct emac_rx_queue *rx_q,
       dma_addr_t addr)
{
 u32 *hw_rfd = EMAC_RFD(rx_q, adpt->rfd_size, rx_q->rfd.produce_idx);

 *(hw_rfd++) = lower_32_bits(addr);
 *hw_rfd = upper_32_bits(addr);

 if (++rx_q->rfd.produce_idx == rx_q->rfd.count)
  rx_q->rfd.produce_idx = 0;
}
