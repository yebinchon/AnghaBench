
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_ring_AC_BK; int tx_ring_AC_BE; int tx_ring_AC_VI; int tx_ring_AC_VO; int tx_ring_mcast; } ;
struct b43_wldev {TYPE_1__ dma; } ;


 int b43_dma_tx_resume_ring (int ) ;
 int b43_power_saving_ctl_bits (struct b43_wldev*,int ) ;

void b43_dma_tx_resume(struct b43_wldev *dev)
{
 b43_dma_tx_resume_ring(dev->dma.tx_ring_mcast);
 b43_dma_tx_resume_ring(dev->dma.tx_ring_AC_VO);
 b43_dma_tx_resume_ring(dev->dma.tx_ring_AC_VI);
 b43_dma_tx_resume_ring(dev->dma.tx_ring_AC_BE);
 b43_dma_tx_resume_ring(dev->dma.tx_ring_AC_BK);
 b43_power_saving_ctl_bits(dev, 0);
}
