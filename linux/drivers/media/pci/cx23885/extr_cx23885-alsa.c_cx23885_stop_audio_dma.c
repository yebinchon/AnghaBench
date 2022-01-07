
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int * sram_channels; } ;
struct cx23885_audio_dev {struct cx23885_dev* dev; } ;


 int AUDIO_INT_INT_MSK ;
 size_t AUDIO_SRAM_CHANNEL ;
 int AUD_INT_DMA_CTL ;
 int AUD_INT_DN_RISCI1 ;
 int AUD_INT_DN_SYNC ;
 int AUD_INT_OPC_ERR ;
 int PCI_INT_MSK ;
 int PCI_MSK_AUD_INT ;
 scalar_t__ audio_debug ;
 int cx23885_sram_channel_dump (struct cx23885_dev*,int *) ;
 int cx_clear (int ,int) ;
 int dprintk (int,char*) ;

__attribute__((used)) static int cx23885_stop_audio_dma(struct cx23885_audio_dev *chip)
{
 struct cx23885_dev *dev = chip->dev;
 dprintk(1, "Stopping audio DMA\n");


 cx_clear(AUD_INT_DMA_CTL, 0x11);


 cx_clear(PCI_INT_MSK, PCI_MSK_AUD_INT);
 cx_clear(AUDIO_INT_INT_MSK, AUD_INT_OPC_ERR | AUD_INT_DN_SYNC |
        AUD_INT_DN_RISCI1);

 if (audio_debug)
  cx23885_sram_channel_dump(chip->dev,
   &dev->sram_channels[AUDIO_SRAM_CHANNEL]);

 return 0;
}
