
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dmasound {int * vaddr; int * sglist; } ;


 int vfree (int *) ;

__attribute__((used)) static int saa7134_alsa_dma_free(struct saa7134_dmasound *dma)
{
 vfree(dma->sglist);
 dma->sglist = ((void*)0);
 vfree(dma->vaddr);
 dma->vaddr = ((void*)0);
 return 0;
}
