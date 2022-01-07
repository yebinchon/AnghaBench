
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_ring {int ena_com_io_cq; int smoothed_interval; int ena_dev; } ;
struct ena_eth_io_intr_reg {int dummy; } ;


 scalar_t__ ena_com_get_adaptive_moderation_enabled (int ) ;
 int ena_com_get_nonadaptive_moderation_interval_rx (int ) ;
 int ena_com_unmask_intr (int ,struct ena_eth_io_intr_reg*) ;
 int ena_com_update_intr_reg (struct ena_eth_io_intr_reg*,int ,int ,int) ;

__attribute__((used)) static void ena_unmask_interrupt(struct ena_ring *tx_ring,
     struct ena_ring *rx_ring)
{
 struct ena_eth_io_intr_reg intr_reg;
 u32 rx_interval = ena_com_get_adaptive_moderation_enabled(rx_ring->ena_dev) ?
  rx_ring->smoothed_interval :
  ena_com_get_nonadaptive_moderation_interval_rx(rx_ring->ena_dev);




 ena_com_update_intr_reg(&intr_reg,
    rx_interval,
    tx_ring->smoothed_interval,
    1);





 ena_com_unmask_intr(rx_ring->ena_com_io_cq, &intr_reg);
}
