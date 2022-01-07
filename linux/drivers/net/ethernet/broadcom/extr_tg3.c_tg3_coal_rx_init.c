
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int rxq_cnt; int irq_max; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames_irq; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int ENABLE_RSS ;
 int HOSTCC_RXCOAL_MAXF_INT ;
 int HOSTCC_RXCOAL_MAXF_INT_VEC1 ;
 int HOSTCC_RXCOL_TICKS ;
 int HOSTCC_RXCOL_TICKS_VEC1 ;
 int HOSTCC_RXMAX_FRAMES ;
 int HOSTCC_RXMAX_FRAMES_VEC1 ;
 int tg3_flag (struct tg3*,int ) ;
 int tw32 (int,int ) ;

__attribute__((used)) static void tg3_coal_rx_init(struct tg3 *tp, struct ethtool_coalesce *ec)
{
 int i = 0;
 u32 limit = tp->rxq_cnt;

 if (!tg3_flag(tp, ENABLE_RSS)) {
  tw32(HOSTCC_RXCOL_TICKS, ec->rx_coalesce_usecs);
  tw32(HOSTCC_RXMAX_FRAMES, ec->rx_max_coalesced_frames);
  tw32(HOSTCC_RXCOAL_MAXF_INT, ec->rx_max_coalesced_frames_irq);
  limit--;
 } else {
  tw32(HOSTCC_RXCOL_TICKS, 0);
  tw32(HOSTCC_RXMAX_FRAMES, 0);
  tw32(HOSTCC_RXCOAL_MAXF_INT, 0);
 }

 for (; i < limit; i++) {
  u32 reg;

  reg = HOSTCC_RXCOL_TICKS_VEC1 + i * 0x18;
  tw32(reg, ec->rx_coalesce_usecs);
  reg = HOSTCC_RXMAX_FRAMES_VEC1 + i * 0x18;
  tw32(reg, ec->rx_max_coalesced_frames);
  reg = HOSTCC_RXCOAL_MAXF_INT_VEC1 + i * 0x18;
  tw32(reg, ec->rx_max_coalesced_frames_irq);
 }

 for (; i < tp->irq_max - 1; i++) {
  tw32(HOSTCC_RXCOL_TICKS_VEC1 + i * 0x18, 0);
  tw32(HOSTCC_RXMAX_FRAMES_VEC1 + i * 0x18, 0);
  tw32(HOSTCC_RXCOAL_MAXF_INT_VEC1 + i * 0x18, 0);
 }
}
