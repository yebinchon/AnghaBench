
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sram_channel {int dma_ctl; } ;
struct file {int dummy; } ;
struct cx25821_dev {int dummy; } ;
struct cx25821_channel {struct sram_channel* sram_channels; struct cx25821_dev* dev; } ;


 int cx_read (int ) ;
 int pr_info (char*,char*) ;
 struct cx25821_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct cx25821_channel *chan = video_drvdata(file);
 struct cx25821_dev *dev = chan->dev;
 const struct sram_channel *sram_ch = chan->sram_channels;
 u32 tmp = 0;

 tmp = cx_read(sram_ch->dma_ctl);
 pr_info("Video input 0 is %s\n",
  (tmp & 0x11) ? "streaming" : "stopped");
 return 0;
}
