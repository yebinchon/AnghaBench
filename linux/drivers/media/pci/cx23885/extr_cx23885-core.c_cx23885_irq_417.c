
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_tsport {size_t sram_chno; int reg_ts_int_stat; int slock; int mpegq; int dma_ctl_val; int reg_dma_ctl; int reg_ts_int_msk; int reg_gpcnt; } ;
struct cx23885_dev {int * sram_channels; int name; struct cx23885_tsport ts1; } ;


 int VID_B_MSK_BAD_PKT ;
 int VID_B_MSK_OF ;
 int VID_B_MSK_OPC_ERR ;
 int VID_B_MSK_RISCI1 ;
 int VID_B_MSK_SYNC ;
 int VID_B_MSK_VBI_OF ;
 int VID_B_MSK_VBI_OPC_ERR ;
 int VID_B_MSK_VBI_SYNC ;
 int cx23885_417_check_encoder (struct cx23885_dev*) ;
 int cx23885_sram_channel_dump (struct cx23885_dev*,int *) ;
 int cx23885_wakeup (struct cx23885_tsport*,int *,int) ;
 int cx_clear (int ,int ) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*,...) ;
 int pr_err (char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int cx23885_irq_417(struct cx23885_dev *dev, u32 status)
{

 struct cx23885_tsport *port = &dev->ts1;
 int count = 0;
 int handled = 0;

 if (status == 0)
  return handled;

 count = cx_read(port->reg_gpcnt);
 dprintk(7, "status: 0x%08x  mask: 0x%08x count: 0x%x\n",
  status, cx_read(port->reg_ts_int_msk), count);

 if ((status & VID_B_MSK_BAD_PKT) ||
  (status & VID_B_MSK_OPC_ERR) ||
  (status & VID_B_MSK_VBI_OPC_ERR) ||
  (status & VID_B_MSK_SYNC) ||
  (status & VID_B_MSK_VBI_SYNC) ||
  (status & VID_B_MSK_OF) ||
  (status & VID_B_MSK_VBI_OF)) {
  pr_err("%s: V4L mpeg risc op code error, status = 0x%x\n",
         dev->name, status);
  if (status & VID_B_MSK_BAD_PKT)
   dprintk(1, "        VID_B_MSK_BAD_PKT\n");
  if (status & VID_B_MSK_OPC_ERR)
   dprintk(1, "        VID_B_MSK_OPC_ERR\n");
  if (status & VID_B_MSK_VBI_OPC_ERR)
   dprintk(1, "        VID_B_MSK_VBI_OPC_ERR\n");
  if (status & VID_B_MSK_SYNC)
   dprintk(1, "        VID_B_MSK_SYNC\n");
  if (status & VID_B_MSK_VBI_SYNC)
   dprintk(1, "        VID_B_MSK_VBI_SYNC\n");
  if (status & VID_B_MSK_OF)
   dprintk(1, "        VID_B_MSK_OF\n");
  if (status & VID_B_MSK_VBI_OF)
   dprintk(1, "        VID_B_MSK_VBI_OF\n");

  cx_clear(port->reg_dma_ctl, port->dma_ctl_val);
  cx23885_sram_channel_dump(dev,
   &dev->sram_channels[port->sram_chno]);
  cx23885_417_check_encoder(dev);
 } else if (status & VID_B_MSK_RISCI1) {
  dprintk(7, "        VID_B_MSK_RISCI1\n");
  spin_lock(&port->slock);
  cx23885_wakeup(port, &port->mpegq, count);
  spin_unlock(&port->slock);
 }
 if (status) {
  cx_write(port->reg_ts_int_stat, status);
  handled = 1;
 }

 return handled;
}
