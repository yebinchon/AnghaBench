
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_tsport {size_t sram_chno; int reg_ts_int_stat; int slock; int mpegq; int reg_gpcnt; int dma_ctl_val; int reg_dma_ctl; struct cx23885_dev* dev; } ;
struct cx23885_dev {int * sram_channels; int name; } ;


 int VID_BC_MSK_BAD_PKT ;
 int VID_BC_MSK_OF ;
 int VID_BC_MSK_OPC_ERR ;
 int VID_BC_MSK_RISCI1 ;
 int VID_BC_MSK_SYNC ;
 int cx23885_sram_channel_dump (struct cx23885_dev*,int *) ;
 int cx23885_wakeup (struct cx23885_tsport*,int *,int) ;
 int cx_clear (int ,int ) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*,int) ;
 int pr_err (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cx23885_irq_ts(struct cx23885_tsport *port, u32 status)
{
 struct cx23885_dev *dev = port->dev;
 int handled = 0;
 u32 count;

 if ((status & VID_BC_MSK_OPC_ERR) ||
  (status & VID_BC_MSK_BAD_PKT) ||
  (status & VID_BC_MSK_SYNC) ||
  (status & VID_BC_MSK_OF)) {

  if (status & VID_BC_MSK_OPC_ERR)
   dprintk(7, " (VID_BC_MSK_OPC_ERR 0x%08x)\n",
    VID_BC_MSK_OPC_ERR);

  if (status & VID_BC_MSK_BAD_PKT)
   dprintk(7, " (VID_BC_MSK_BAD_PKT 0x%08x)\n",
    VID_BC_MSK_BAD_PKT);

  if (status & VID_BC_MSK_SYNC)
   dprintk(7, " (VID_BC_MSK_SYNC    0x%08x)\n",
    VID_BC_MSK_SYNC);

  if (status & VID_BC_MSK_OF)
   dprintk(7, " (VID_BC_MSK_OF      0x%08x)\n",
    VID_BC_MSK_OF);

  pr_err("%s: mpeg risc op code error\n", dev->name);

  cx_clear(port->reg_dma_ctl, port->dma_ctl_val);
  cx23885_sram_channel_dump(dev,
   &dev->sram_channels[port->sram_chno]);

 } else if (status & VID_BC_MSK_RISCI1) {

  dprintk(7, " (RISCI1            0x%08x)\n", VID_BC_MSK_RISCI1);

  spin_lock(&port->slock);
  count = cx_read(port->reg_gpcnt);
  cx23885_wakeup(port, &port->mpegq, count);
  spin_unlock(&port->slock);

 }
 if (status) {
  cx_write(port->reg_ts_int_stat, status);
  handled = 1;
 }

 return handled;
}
