
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx25821_dev {TYPE_2__* channels; } ;
struct TYPE_4__ {TYPE_1__* sram_channels; } ;
struct TYPE_3__ {int int_msk; int dma_ctl; } ;


 int AUD_A_INT_MSK ;
 int AUD_INT_DMA_CTL ;
 int DEV_CNTRL2 ;
 int PCI_INT_MSK ;
 int UART_CTL ;
 int VID_CHANNEL_NUM ;
 int VID_UPSTREAM_SRAM_CHANNEL_I ;
 int VID_UPSTREAM_SRAM_CHANNEL_J ;
 int cx_write (int ,int ) ;

__attribute__((used)) static void cx25821_shutdown(struct cx25821_dev *dev)
{
 int i;


 cx_write(DEV_CNTRL2, 0);


 for (i = 0; i < VID_CHANNEL_NUM; i++) {
  cx_write(dev->channels[i].sram_channels->dma_ctl, 0);
  cx_write(dev->channels[i].sram_channels->int_msk, 0);
 }

 for (i = VID_UPSTREAM_SRAM_CHANNEL_I;
  i <= VID_UPSTREAM_SRAM_CHANNEL_J; i++) {
  cx_write(dev->channels[i].sram_channels->dma_ctl, 0);
  cx_write(dev->channels[i].sram_channels->int_msk, 0);
 }


 cx_write(AUD_INT_DMA_CTL, 0);


 cx_write(UART_CTL, 0);


 cx_write(PCI_INT_MSK, 0);
 cx_write(AUD_A_INT_MSK, 0);
}
