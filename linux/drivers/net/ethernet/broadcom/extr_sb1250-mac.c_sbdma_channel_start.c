
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmacdma {int sbdma_dscrtable_phys; int sbdma_dscrtable; int sbdma_remptr; int sbdma_addptr; int sbdma_dscrbase; int sbdma_config0; int sbdma_maxdescr; int sbdma_config1; int sbdma_int_pktcnt; int sbdma_int_timeout; } ;


 int M_DMA_EOP_INT_EN ;
 int V_DMA_INT_PKTCNT (int ) ;
 int V_DMA_INT_TIMEOUT (int ) ;
 int V_DMA_RINGSZ (int ) ;
 int __raw_writeq (int,int ) ;

__attribute__((used)) static void sbdma_channel_start(struct sbmacdma *d, int rxtx)
{
 __raw_writeq(0, d->sbdma_config1);
 __raw_writeq(V_DMA_RINGSZ(d->sbdma_maxdescr) |
         0, d->sbdma_config0);


 __raw_writeq(d->sbdma_dscrtable_phys, d->sbdma_dscrbase);





 d->sbdma_addptr = d->sbdma_dscrtable;
 d->sbdma_remptr = d->sbdma_dscrtable;
}
