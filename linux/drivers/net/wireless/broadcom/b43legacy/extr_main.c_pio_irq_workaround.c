
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int * dma_reason; } ;


 int B43legacy_DMAIRQ_RX_DONE ;
 int B43legacy_PIO_RXCTL ;
 int B43legacy_PIO_RXCTL_DATAAVAILABLE ;
 int b43legacy_read16 (struct b43legacy_wldev*,int) ;

__attribute__((used)) static void pio_irq_workaround(struct b43legacy_wldev *dev,
          u16 base, int queueidx)
{
 u16 rxctl;

 rxctl = b43legacy_read16(dev, base + B43legacy_PIO_RXCTL);
 if (rxctl & B43legacy_PIO_RXCTL_DATAAVAILABLE)
  dev->dma_reason[queueidx] |= B43legacy_DMAIRQ_RX_DONE;
 else
  dev->dma_reason[queueidx] &= ~B43legacy_DMAIRQ_RX_DONE;
}
