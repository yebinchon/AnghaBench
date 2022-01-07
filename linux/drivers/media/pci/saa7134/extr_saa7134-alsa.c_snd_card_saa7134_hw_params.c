
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_5__ {unsigned int blocks; unsigned int blksize; unsigned int bufsize; int * vaddr; int pt; int sglen; int sglist; } ;
struct saa7134_dev {TYPE_1__ dmasound; int pci; } ;
struct TYPE_7__ {struct saa7134_dev* dev; } ;
typedef TYPE_3__ snd_card_saa7134_t ;
struct TYPE_6__ {unsigned int dma_bytes; scalar_t__ dma_addr; int * dma_area; } ;


 int EINVAL ;
 int dsp_buffer_free (struct saa7134_dev*) ;
 int dsp_buffer_init (struct saa7134_dev*) ;
 unsigned int params_period_bytes (struct snd_pcm_hw_params*) ;
 unsigned int params_periods (struct snd_pcm_hw_params*) ;
 int saa7134_alsa_dma_map (struct saa7134_dev*) ;
 int saa7134_alsa_dma_unmap (struct saa7134_dev*) ;
 int saa7134_pgtable_alloc (int ,int *) ;
 int saa7134_pgtable_build (int ,int *,int ,int ,int ) ;
 int saa7134_pgtable_free (int ,int *) ;
 TYPE_3__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_card_saa7134_hw_params(struct snd_pcm_substream * substream,
          struct snd_pcm_hw_params * hw_params)
{
 snd_card_saa7134_t *saa7134 = snd_pcm_substream_chip(substream);
 struct saa7134_dev *dev;
 unsigned int period_size, periods;
 int err;

 period_size = params_period_bytes(hw_params);
 periods = params_periods(hw_params);

 if (period_size < 0x100 || period_size > 0x10000)
  return -EINVAL;
 if (periods < 4)
  return -EINVAL;
 if (period_size * periods > 1024 * 1024)
  return -EINVAL;

 dev = saa7134->dev;

 if (dev->dmasound.blocks == periods &&
     dev->dmasound.blksize == period_size)
  return 0;


 if (substream->runtime->dma_area) {
  saa7134_pgtable_free(dev->pci, &dev->dmasound.pt);
  saa7134_alsa_dma_unmap(dev);
  dsp_buffer_free(dev);
  substream->runtime->dma_area = ((void*)0);
 }
 dev->dmasound.blocks = periods;
 dev->dmasound.blksize = period_size;
 dev->dmasound.bufsize = period_size * periods;

 err = dsp_buffer_init(dev);
 if (0 != err) {
  dev->dmasound.blocks = 0;
  dev->dmasound.blksize = 0;
  dev->dmasound.bufsize = 0;
  return err;
 }

 err = saa7134_alsa_dma_map(dev);
 if (err) {
  dsp_buffer_free(dev);
  return err;
 }
 err = saa7134_pgtable_alloc(dev->pci, &dev->dmasound.pt);
 if (err) {
  saa7134_alsa_dma_unmap(dev);
  dsp_buffer_free(dev);
  return err;
 }
 err = saa7134_pgtable_build(dev->pci, &dev->dmasound.pt,
    dev->dmasound.sglist, dev->dmasound.sglen, 0);
 if (err) {
  saa7134_pgtable_free(dev->pci, &dev->dmasound.pt);
  saa7134_alsa_dma_unmap(dev);
  dsp_buffer_free(dev);
  return err;
 }





 substream->runtime->dma_area = dev->dmasound.vaddr;
 substream->runtime->dma_bytes = dev->dmasound.bufsize;
 substream->runtime->dma_addr = 0;

 return 0;

}
