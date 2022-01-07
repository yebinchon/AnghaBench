
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int slock; int vidq; int * sram_channels; int name; } ;


 size_t SRAM_CH01 ;
 int VID_A_GPCNT ;
 int VID_A_INT_MSK ;
 int VID_A_INT_STAT ;
 int VID_BC_MSK_OF ;
 int VID_BC_MSK_OPC_ERR ;
 int VID_BC_MSK_RISCI1 ;
 int VID_BC_MSK_SYNC ;
 int cx23885_sram_channel_dump (struct cx23885_dev*,int *) ;
 scalar_t__ cx23885_vbi_irq (struct cx23885_dev*,int) ;
 int cx23885_video_wakeup (struct cx23885_dev*,int *,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*,int) ;
 int pr_warn (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int cx23885_video_irq(struct cx23885_dev *dev, u32 status)
{
 u32 mask, count;
 int handled = 0;

 mask = cx_read(VID_A_INT_MSK);
 if (0 == (status & mask))
  return handled;

 cx_write(VID_A_INT_STAT, status);


 if ((status & VID_BC_MSK_OPC_ERR) ||
  (status & VID_BC_MSK_SYNC) ||
  (status & VID_BC_MSK_OF)) {

  if (status & VID_BC_MSK_OPC_ERR) {
   dprintk(7, " (VID_BC_MSK_OPC_ERR 0x%08x)\n",
    VID_BC_MSK_OPC_ERR);
   pr_warn("%s: video risc op code error\n",
    dev->name);
   cx23885_sram_channel_dump(dev,
    &dev->sram_channels[SRAM_CH01]);
  }

  if (status & VID_BC_MSK_SYNC)
   dprintk(7, " (VID_BC_MSK_SYNC 0x%08x) video lines miss-match\n",
    VID_BC_MSK_SYNC);

  if (status & VID_BC_MSK_OF)
   dprintk(7, " (VID_BC_MSK_OF 0x%08x) fifo overflow\n",
    VID_BC_MSK_OF);

 }


 if (status & VID_BC_MSK_RISCI1) {
  spin_lock(&dev->slock);
  count = cx_read(VID_A_GPCNT);
  cx23885_video_wakeup(dev, &dev->vidq, count);
  spin_unlock(&dev->slock);
  handled++;
 }


 handled += cx23885_vbi_irq(dev, status);

 return handled;
}
