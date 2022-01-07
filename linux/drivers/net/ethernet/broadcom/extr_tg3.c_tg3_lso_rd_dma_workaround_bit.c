
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 scalar_t__ ASIC_REV_5719 ;
 int TG3_LSO_RD_DMA_TX_LENGTH_WA_5719 ;
 int TG3_LSO_RD_DMA_TX_LENGTH_WA_5720 ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;

__attribute__((used)) static inline u32 tg3_lso_rd_dma_workaround_bit(struct tg3 *tp)
{
 if (tg3_asic_rev(tp) == ASIC_REV_5719)
  return TG3_LSO_RD_DMA_TX_LENGTH_WA_5719;
 else
  return TG3_LSO_RD_DMA_TX_LENGTH_WA_5720;
}
