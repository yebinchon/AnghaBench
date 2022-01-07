
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx25821_riscmem {int dma; int cpu; int size; } ;
struct cx25821_audio_dev {scalar_t__ dma_size; TYPE_1__* buf; int pci; } ;
struct TYPE_3__ {struct cx25821_riscmem risc; } ;


 int BUG_ON (int) ;
 int cx25821_alsa_dma_free (TYPE_1__*) ;
 int cx25821_alsa_dma_unmap (struct cx25821_audio_dev*) ;
 int dprintk (int,char*) ;
 int kfree (TYPE_1__*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;

__attribute__((used)) static int dsp_buffer_free(struct cx25821_audio_dev *chip)
{
 struct cx25821_riscmem *risc = &chip->buf->risc;

 BUG_ON(!chip->dma_size);

 dprintk(2, "Freeing buffer\n");
 cx25821_alsa_dma_unmap(chip);
 cx25821_alsa_dma_free(chip->buf);
 pci_free_consistent(chip->pci, risc->size, risc->cpu, risc->dma);
 kfree(chip->buf);

 chip->buf = ((void*)0);
 chip->dma_size = 0;

 return 0;
}
