
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sram_channel {int i; int dma_ctl; int int_msk; int gpcnt_ctl; } ;
struct cx25821_dmaqueue {int dummy; } ;
struct cx25821_dev {int dummy; } ;
struct TYPE_2__ {int dma; } ;
struct cx25821_buffer {TYPE_1__ risc; int bpl; } ;


 int PCI_INT_MSK ;
 int VID_CH_MODE_SEL ;
 int cx25821_sram_channel_setup (struct cx25821_dev*,struct sram_channel const*,int ,int ) ;
 int cx_read (int ) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;

int cx25821_start_video_dma(struct cx25821_dev *dev,
       struct cx25821_dmaqueue *q,
       struct cx25821_buffer *buf,
       const struct sram_channel *channel)
{
 int tmp = 0;


 cx25821_sram_channel_setup(dev, channel, buf->bpl, buf->risc.dma);


 cx_write(channel->gpcnt_ctl, 3);


 cx_set(PCI_INT_MSK, cx_read(PCI_INT_MSK) | (1 << channel->i));
 cx_set(channel->int_msk, 0x11);


 cx_write(channel->dma_ctl, 0x11);


 tmp = cx_read(VID_CH_MODE_SEL);
 cx_write(VID_CH_MODE_SEL, tmp & 0xFFFFFE00);

 return 0;
}
