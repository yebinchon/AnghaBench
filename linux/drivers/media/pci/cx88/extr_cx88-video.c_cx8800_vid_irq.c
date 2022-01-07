
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {int slock; int vbiq; int vidq; struct cx88_core* core; } ;


 int ARRAY_SIZE (int ) ;
 int MO_VBI_GPCNT ;
 int MO_VIDY_GPCNT ;
 int MO_VID_DMACNTRL ;
 int MO_VID_INTMSK ;
 int MO_VID_INTSTAT ;
 size_t SRAM_CH21 ;
 int VID_CAPTURE_CONTROL ;
 int cx88_print_irqbits (char*,int ,int ,int,int) ;
 int cx88_sram_channel_dump (struct cx88_core*,int *) ;
 int * cx88_sram_channels ;
 int cx88_vid_irqs ;
 int cx88_wakeup (struct cx88_core*,int *,int) ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 scalar_t__ irq_debug ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cx8800_vid_irq(struct cx8800_dev *dev)
{
 struct cx88_core *core = dev->core;
 u32 status, mask, count;

 status = cx_read(MO_VID_INTSTAT);
 mask = cx_read(MO_VID_INTMSK);
 if (0 == (status & mask))
  return;
 cx_write(MO_VID_INTSTAT, status);
 if (irq_debug || (status & mask & ~0xff))
  cx88_print_irqbits("irq vid",
       cx88_vid_irqs, ARRAY_SIZE(cx88_vid_irqs),
       status, mask);


 if (status & (1 << 16)) {
  pr_warn("video risc op code error\n");
  cx_clear(MO_VID_DMACNTRL, 0x11);
  cx_clear(VID_CAPTURE_CONTROL, 0x06);
  cx88_sram_channel_dump(core, &cx88_sram_channels[SRAM_CH21]);
 }


 if (status & 0x01) {
  spin_lock(&dev->slock);
  count = cx_read(MO_VIDY_GPCNT);
  cx88_wakeup(core, &dev->vidq, count);
  spin_unlock(&dev->slock);
 }


 if (status & 0x08) {
  spin_lock(&dev->slock);
  count = cx_read(MO_VBI_GPCNT);
  cx88_wakeup(core, &dev->vbiq, count);
  spin_unlock(&dev->slock);
 }
}
