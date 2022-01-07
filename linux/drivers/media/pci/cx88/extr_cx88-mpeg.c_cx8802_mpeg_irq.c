
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;
struct cx8802_dev {int slock; int mpegq; struct cx88_core* core; } ;


 int ARRAY_SIZE (int ) ;
 int MO_TS_DMACNTRL ;
 int MO_TS_GPCNT ;
 int MO_TS_INTMSK ;
 int MO_TS_INTSTAT ;
 size_t SRAM_CH28 ;
 int cx8802_stop_dma (struct cx8802_dev*) ;
 int cx88_mpeg_irqs ;
 int cx88_print_irqbits (char*,int ,int ,int,int) ;
 int cx88_sram_channel_dump (struct cx88_core*,int *) ;
 int * cx88_sram_channels ;
 int cx88_wakeup (struct cx88_core*,int *,int) ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 scalar_t__ debug ;
 int dprintk (int,char*,...) ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cx8802_mpeg_irq(struct cx8802_dev *dev)
{
 struct cx88_core *core = dev->core;
 u32 status, mask, count;

 dprintk(1, "\n");
 status = cx_read(MO_TS_INTSTAT);
 mask = cx_read(MO_TS_INTMSK);
 if (0 == (status & mask))
  return;

 cx_write(MO_TS_INTSTAT, status);

 if (debug || (status & mask & ~0xff))
  cx88_print_irqbits("irq mpeg ",
       cx88_mpeg_irqs, ARRAY_SIZE(cx88_mpeg_irqs),
       status, mask);


 if (status & (1 << 16)) {
  pr_warn("mpeg risc op code error\n");
  cx_clear(MO_TS_DMACNTRL, 0x11);
  cx88_sram_channel_dump(dev->core,
           &cx88_sram_channels[SRAM_CH28]);
 }


 if (status & 0x01) {
  dprintk(1, "wake up\n");
  spin_lock(&dev->slock);
  count = cx_read(MO_TS_GPCNT);
  cx88_wakeup(dev->core, &dev->mpegq, count);
  spin_unlock(&dev->slock);
 }


 if (status & 0x1f0100) {
  dprintk(0, "general errors: 0x%08x\n", status & 0x1f0100);
  spin_lock(&dev->slock);
  cx8802_stop_dma(dev);
  spin_unlock(&dev->slock);
 }
}
