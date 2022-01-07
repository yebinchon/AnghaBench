
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int dummy; } ;


 scalar_t__ BNX2_CHIP (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_5706 ;
 scalar_t__ BNX2_CHIP_5708 ;
 int BNX2_MISC_ENABLE_CLR_BITS ;
 int BNX2_MISC_ENABLE_CLR_BITS_DMA_ENGINE_ENABLE ;
 int BNX2_MISC_ENABLE_CLR_BITS_HOST_COALESCE_ENABLE ;
 int BNX2_MISC_ENABLE_CLR_BITS_RX_DMA_ENABLE ;
 int BNX2_MISC_ENABLE_CLR_BITS_TX_DMA_ENABLE ;
 int BNX2_MISC_NEW_CORE_CTL ;
 int BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE ;
 int BNX2_PCICFG_DEVICE_CONTROL ;
 int BNX2_PCICFG_DEVICE_STATUS_NO_PEND ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static void
bnx2_wait_dma_complete(struct bnx2 *bp)
{
 u32 val;
 int i;





 if ((BNX2_CHIP(bp) == BNX2_CHIP_5706) ||
     (BNX2_CHIP(bp) == BNX2_CHIP_5708)) {
  BNX2_WR(bp, BNX2_MISC_ENABLE_CLR_BITS,
   BNX2_MISC_ENABLE_CLR_BITS_TX_DMA_ENABLE |
   BNX2_MISC_ENABLE_CLR_BITS_DMA_ENGINE_ENABLE |
   BNX2_MISC_ENABLE_CLR_BITS_RX_DMA_ENABLE |
   BNX2_MISC_ENABLE_CLR_BITS_HOST_COALESCE_ENABLE);
  val = BNX2_RD(bp, BNX2_MISC_ENABLE_CLR_BITS);
  udelay(5);
 } else {
  val = BNX2_RD(bp, BNX2_MISC_NEW_CORE_CTL);
  val &= ~BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE;
  BNX2_WR(bp, BNX2_MISC_NEW_CORE_CTL, val);
  val = BNX2_RD(bp, BNX2_MISC_NEW_CORE_CTL);

  for (i = 0; i < 100; i++) {
   msleep(1);
   val = BNX2_RD(bp, BNX2_PCICFG_DEVICE_CONTROL);
   if (!(val & BNX2_PCICFG_DEVICE_STATUS_NO_PEND))
    break;
  }
 }

 return;
}
