
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8842_adapter {int conf_flags; scalar_t__ hw_addr; } ;


 int ENABLED_IRQS ;
 int ENABLED_IRQS_DMA ;
 int ENABLED_IRQS_DMA_IP ;
 scalar_t__ KS8842_USE_DMA (struct ks8842_adapter*) ;
 int MICREL_KS884X ;
 int REG_IER ;
 int REG_ISR ;
 int REG_P1CR2 ;
 int REG_P1CR4 ;
 int REG_QRFCR ;
 int REG_RXCR ;
 int REG_RXFDPR ;
 int REG_SGCR1 ;
 int REG_SGCR2 ;
 int REG_SW_ID_AND_ENABLE ;
 scalar_t__ REG_TIMB_IER ;
 int REG_TXCR ;
 int REG_TXFDPR ;
 int iowrite16 (int,scalar_t__) ;
 int ks8842_enable_bits (struct ks8842_adapter*,int,int,int ) ;
 int ks8842_enable_rx (struct ks8842_adapter*) ;
 int ks8842_enable_tx (struct ks8842_adapter*) ;
 int ks8842_reset (struct ks8842_adapter*) ;
 int ks8842_write16 (struct ks8842_adapter*,int,int,int ) ;

__attribute__((used)) static void ks8842_reset_hw(struct ks8842_adapter *adapter)
{

 ks8842_reset(adapter);


 ks8842_write16(adapter, 16, 0x000E, REG_TXCR);



 ks8842_write16(adapter, 16, 0x8 | 0x20 | 0x40 | 0x80 | 0x400,
  REG_RXCR);


 ks8842_write16(adapter, 17, 0x4000, REG_TXFDPR);


 ks8842_write16(adapter, 17, 0x4000, REG_RXFDPR);


 ks8842_write16(adapter, 0, 0x1000, REG_QRFCR);


 ks8842_enable_bits(adapter, 32, 1 << 8, REG_SGCR1);


 ks8842_enable_bits(adapter, 32, 1 << 3, REG_SGCR2);


 ks8842_write16(adapter, 48, 0x1E07, REG_P1CR2);


 ks8842_enable_bits(adapter, 49, 1 << 13, REG_P1CR4);


 ks8842_enable_tx(adapter);


 ks8842_enable_rx(adapter);


 ks8842_write16(adapter, 18, 0xffff, REG_ISR);


 if (KS8842_USE_DMA(adapter)) {




  iowrite16(ENABLED_IRQS_DMA_IP, adapter->hw_addr + REG_TIMB_IER);
  ks8842_write16(adapter, 18, ENABLED_IRQS_DMA, REG_IER);
 } else {
  if (!(adapter->conf_flags & MICREL_KS884X))
   iowrite16(ENABLED_IRQS,
    adapter->hw_addr + REG_TIMB_IER);
  ks8842_write16(adapter, 18, ENABLED_IRQS, REG_IER);
 }

 ks8842_write16(adapter, 32, 0x1, REG_SW_ID_AND_ENABLE);
}
