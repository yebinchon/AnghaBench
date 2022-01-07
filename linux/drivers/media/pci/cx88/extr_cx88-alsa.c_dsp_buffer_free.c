
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_riscmem {int dma; scalar_t__ cpu; int size; } ;
struct cx88_audio_dev {TYPE_1__* buf; int pci; int dma_size; } ;
struct TYPE_3__ {struct cx88_riscmem risc; } ;


 int WARN_ON (int) ;
 int cx88_alsa_dma_free (TYPE_1__*) ;
 int cx88_alsa_dma_unmap (struct cx88_audio_dev*) ;
 int dprintk (int,char*) ;
 int kfree (TYPE_1__*) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int dsp_buffer_free(struct cx88_audio_dev *chip)
{
 struct cx88_riscmem *risc = &chip->buf->risc;

 WARN_ON(!chip->dma_size);

 dprintk(2, "Freeing buffer\n");
 cx88_alsa_dma_unmap(chip);
 cx88_alsa_dma_free(chip->buf);
 if (risc->cpu)
  pci_free_consistent(chip->pci, risc->size,
        risc->cpu, risc->dma);
 kfree(chip->buf);

 chip->buf = ((void*)0);

 return 0;
}
