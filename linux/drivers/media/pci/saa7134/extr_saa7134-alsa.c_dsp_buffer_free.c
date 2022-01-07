
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bufsize; scalar_t__ blksize; scalar_t__ blocks; } ;
struct saa7134_dev {TYPE_1__ dmasound; } ;


 int BUG_ON (int) ;
 int saa7134_alsa_dma_free (TYPE_1__*) ;

__attribute__((used)) static int dsp_buffer_free(struct saa7134_dev *dev)
{
 BUG_ON(!dev->dmasound.blksize);

 saa7134_alsa_dma_free(&dev->dmasound);

 dev->dmasound.blocks = 0;
 dev->dmasound.blksize = 0;
 dev->dmasound.bufsize = 0;

 return 0;
}
