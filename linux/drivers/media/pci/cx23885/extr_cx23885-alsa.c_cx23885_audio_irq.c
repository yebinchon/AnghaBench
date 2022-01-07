
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int * sram_channels; int name; struct cx23885_audio_dev* audio_dev; } ;
struct cx23885_audio_dev {int substream; int count; } ;


 int AUDIO_INT_INT_STAT ;
 size_t AUDIO_SRAM_CHANNEL ;
 int AUD_INT_A_GPCNT ;
 int AUD_INT_A_GPCNT_CTL ;
 int AUD_INT_DMA_CTL ;
 int AUD_INT_DN_RISCI1 ;
 int AUD_INT_DN_SYNC ;
 int AUD_INT_OPC_ERR ;
 int GP_COUNT_CONTROL_RESET ;
 int atomic_set (int *,int ) ;
 int cx23885_sram_channel_dump (struct cx23885_dev*,int *) ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*) ;
 int pr_warn (char*,int ) ;
 int snd_pcm_period_elapsed (int ) ;

int cx23885_audio_irq(struct cx23885_dev *dev, u32 status, u32 mask)
{
 struct cx23885_audio_dev *chip = dev->audio_dev;

 if (0 == (status & mask))
  return 0;

 cx_write(AUDIO_INT_INT_STAT, status);


 if (status & AUD_INT_OPC_ERR) {
  pr_warn("%s/1: Audio risc op code error\n",
   dev->name);
  cx_clear(AUD_INT_DMA_CTL, 0x11);
  cx23885_sram_channel_dump(dev,
   &dev->sram_channels[AUDIO_SRAM_CHANNEL]);
 }
 if (status & AUD_INT_DN_SYNC) {
  dprintk(1, "Downstream sync error\n");
  cx_write(AUD_INT_A_GPCNT_CTL, GP_COUNT_CONTROL_RESET);
  return 1;
 }

 if (status & AUD_INT_DN_RISCI1) {
  atomic_set(&chip->count, cx_read(AUD_INT_A_GPCNT));
  snd_pcm_period_elapsed(chip->substream);
 }


 return 1;
}
