
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx23885_riscmem {int dma; int cpu; int size; } ;
struct cx23885_audio_dev {scalar_t__ dma_size; TYPE_1__* buf; int pci; } ;
struct TYPE_3__ {struct cx23885_riscmem risc; } ;


 int BUG_ON (int) ;
 int cx23885_alsa_dma_free (TYPE_1__*) ;
 int cx23885_alsa_dma_unmap (struct cx23885_audio_dev*) ;
 int dprintk (int,char*) ;
 int kfree (TYPE_1__*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;

__attribute__((used)) static int dsp_buffer_free(struct cx23885_audio_dev *chip)
{
 struct cx23885_riscmem *risc;

 BUG_ON(!chip->dma_size);

 dprintk(2, "Freeing buffer\n");
 cx23885_alsa_dma_unmap(chip);
 cx23885_alsa_dma_free(chip->buf);
 risc = &chip->buf->risc;
 pci_free_consistent(chip->pci, risc->size, risc->cpu, risc->dma);
 kfree(chip->buf);

 chip->buf = ((void*)0);
 chip->dma_size = 0;

 return 0;
}
