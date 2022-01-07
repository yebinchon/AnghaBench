
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int dummy; } ;
struct cx25821_audio_dev {struct cx25821_dev* dev; } ;


 int AUD_A_INT_MSK ;
 int AUD_INT_DMA_CTL ;
 int AUD_INT_DN_RISCI1 ;
 int AUD_INT_DN_RISCI2 ;
 int AUD_INT_DN_SYNC ;
 int AUD_INT_OPC_ERR ;
 int FLD_AUD_DST_A_FIFO_EN ;
 int FLD_AUD_DST_A_RISC_EN ;
 int PCI_INT_MSK ;
 int PCI_MSK_AUD_INT ;
 int cx_clear (int ,int) ;

__attribute__((used)) static int _cx25821_stop_audio_dma(struct cx25821_audio_dev *chip)
{
 struct cx25821_dev *dev = chip->dev;


 cx_clear(AUD_INT_DMA_CTL,
   FLD_AUD_DST_A_RISC_EN | FLD_AUD_DST_A_FIFO_EN);


 cx_clear(PCI_INT_MSK, PCI_MSK_AUD_INT);
 cx_clear(AUD_A_INT_MSK, AUD_INT_OPC_ERR | AUD_INT_DN_SYNC |
   AUD_INT_DN_RISCI2 | AUD_INT_DN_RISCI1);

 return 0;
}
