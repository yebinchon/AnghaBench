
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;


 int MANTIS_DEBUG ;
 int MANTIS_DMA_CTL ;
 int MANTIS_ERROR ;
 int dprintk (int ,int,char*) ;
 int mantis_alloc_buffers (struct mantis_pci*) ;
 int mmwrite (int ,int ) ;

int mantis_dma_init(struct mantis_pci *mantis)
{
 int err;

 dprintk(MANTIS_DEBUG, 1, "Mantis DMA init");
 err = mantis_alloc_buffers(mantis);
 if (err < 0) {
  dprintk(MANTIS_ERROR, 1, "Error allocating DMA buffer");


  mmwrite(0, MANTIS_DMA_CTL);

  return err;
 }

 return 0;
}
