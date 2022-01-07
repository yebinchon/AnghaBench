
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_blk; int read_count; int blksize; int blocks; int recording_on; int substream; int bufsize; } ;
struct saa7134_dev {int slock; TYPE_1__ dmasound; } ;


 int SAA7134_RS_BA1 (int) ;
 int SAA7134_RS_BA2 (int) ;
 int UNSET ;
 int pr_debug (char*,...) ;
 int saa_writel (int,int) ;
 int snd_pcm_lib_period_bytes (int ) ;
 int snd_pcm_period_elapsed (int ) ;
 int snd_pcm_stop_xrun (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void saa7134_irq_alsa_done(struct saa7134_dev *dev,
      unsigned long status)
{
 int next_blk, reg = 0;

 spin_lock(&dev->slock);
 if (UNSET == dev->dmasound.dma_blk) {
  pr_debug("irq: recording stopped\n");
  goto done;
 }
 if (0 != (status & 0x0f000000))
  pr_debug("irq: lost %ld\n", (status >> 24) & 0x0f);
 if (0 == (status & 0x10000000)) {

  if (0 == (dev->dmasound.dma_blk & 0x01))
   reg = SAA7134_RS_BA1(6);
 } else {

  if (1 == (dev->dmasound.dma_blk & 0x01))
   reg = SAA7134_RS_BA2(6);
 }
 if (0 == reg) {
  pr_debug("irq: field oops [%s]\n",
   (status & 0x10000000) ? "even" : "odd");
  goto done;
 }

 if (dev->dmasound.read_count >= dev->dmasound.blksize * (dev->dmasound.blocks-2)) {
  pr_debug("irq: overrun [full=%d/%d] - Blocks in %d\n",
   dev->dmasound.read_count,
   dev->dmasound.bufsize, dev->dmasound.blocks);
  spin_unlock(&dev->slock);
  snd_pcm_stop_xrun(dev->dmasound.substream);
  return;
 }


 next_blk = (dev->dmasound.dma_blk + 2) % dev->dmasound.blocks;
 saa_writel(reg,next_blk * dev->dmasound.blksize);
 pr_debug("irq: ok, %s, next_blk=%d, addr=%x, blocks=%u, size=%u, read=%u\n",
  (status & 0x10000000) ? "even" : "odd ", next_blk,
   next_blk * dev->dmasound.blksize, dev->dmasound.blocks,
   dev->dmasound.blksize, dev->dmasound.read_count);


 dev->dmasound.dma_blk = (dev->dmasound.dma_blk + 1) % dev->dmasound.blocks;
 dev->dmasound.read_count += dev->dmasound.blksize;

 dev->dmasound.recording_on = reg;

 if (dev->dmasound.read_count >= snd_pcm_lib_period_bytes(dev->dmasound.substream)) {
  spin_unlock(&dev->slock);
  snd_pcm_period_elapsed(dev->dmasound.substream);
  spin_lock(&dev->slock);
 }

 done:
 spin_unlock(&dev->slock);

}
