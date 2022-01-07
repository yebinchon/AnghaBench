
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int name; } ;
struct cx25821_audio_dev {int substream; int count; struct cx25821_dev* dev; } ;


 int ARRAY_SIZE (int ) ;
 size_t AUDIO_SRAM_CHANNEL ;
 int AUD_A_GPCNT ;
 int AUD_A_GPCNT_CTL ;
 int AUD_A_INT_STAT ;
 int AUD_INT_DMA_CTL ;
 int AUD_INT_DN_RISCI1 ;
 int AUD_INT_DN_SYNC ;
 int AUD_INT_OPC_ERR ;
 int FLD_AUD_DST_A_FIFO_EN ;
 int FLD_AUD_DST_A_RISC_EN ;
 int GP_COUNT_CONTROL_RESET ;
 int atomic_set (int *,int ) ;
 int cx25821_aud_irqs ;
 int cx25821_print_irqbits (int ,char*,int ,int ,int,int) ;
 int cx25821_sram_channel_dump_audio (struct cx25821_dev*,int *) ;
 int * cx25821_sram_channels ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int debug ;
 int pr_warn (char*,int ) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void cx25821_aud_irq(struct cx25821_audio_dev *chip, u32 status,
       u32 mask)
{
 struct cx25821_dev *dev = chip->dev;

 if (0 == (status & mask))
  return;

 cx_write(AUD_A_INT_STAT, status);
 if (debug > 1 || (status & mask & ~0xff))
  cx25821_print_irqbits(dev->name, "irq aud", cx25821_aud_irqs,
    ARRAY_SIZE(cx25821_aud_irqs), status, mask);


 if (status & AUD_INT_OPC_ERR) {
  pr_warn("WARNING %s/1: Audio risc op code error\n", dev->name);

  cx_clear(AUD_INT_DMA_CTL,
    FLD_AUD_DST_A_RISC_EN | FLD_AUD_DST_A_FIFO_EN);
  cx25821_sram_channel_dump_audio(dev,
    &cx25821_sram_channels[AUDIO_SRAM_CHANNEL]);
 }
 if (status & AUD_INT_DN_SYNC) {
  pr_warn("WARNING %s: Downstream sync error!\n", dev->name);
  cx_write(AUD_A_GPCNT_CTL, GP_COUNT_CONTROL_RESET);
  return;
 }


 if (status & AUD_INT_DN_RISCI1) {
  atomic_set(&chip->count, cx_read(AUD_A_GPCNT));
  snd_pcm_period_elapsed(chip->substream);
 }
}
