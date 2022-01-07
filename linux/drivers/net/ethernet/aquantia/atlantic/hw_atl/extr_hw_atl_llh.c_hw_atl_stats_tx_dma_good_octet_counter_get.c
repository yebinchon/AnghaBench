
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_STATS_TX_DMA_GOOD_OCTET_COUNTERLSW ;
 int aq_hw_read_reg64 (struct aq_hw_s*,int ) ;

u64 hw_atl_stats_tx_dma_good_octet_counter_get(struct aq_hw_s *aq_hw)
{
 return aq_hw_read_reg64(aq_hw, HW_ATL_STATS_TX_DMA_GOOD_OCTET_COUNTERLSW);
}
