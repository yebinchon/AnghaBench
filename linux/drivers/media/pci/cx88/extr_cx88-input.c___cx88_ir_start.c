
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_core {int pci_irqmask; struct cx88_IR* ir; } ;
struct TYPE_3__ {int function; } ;
struct cx88_IR {int polling; scalar_t__ sampling; TYPE_1__ timer; } ;


 int CLOCK_MONOTONIC ;
 int EINVAL ;
 int HRTIMER_MODE_REL ;
 int MO_DDSCFG_IO ;
 int MO_DDS_IO ;
 int PCI_INT_IR_SMPINT ;
 int cx88_ir_work ;
 int cx_write (int ,int) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int hrtimer_start (TYPE_1__*,int ,int ) ;
 int ir_samplerate ;
 int ktime_set (int ,int) ;

__attribute__((used)) static int __cx88_ir_start(void *priv)
{
 struct cx88_core *core = priv;
 struct cx88_IR *ir;

 if (!core || !core->ir)
  return -EINVAL;

 ir = core->ir;

 if (ir->polling) {
  hrtimer_init(&ir->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
  ir->timer.function = cx88_ir_work;
  hrtimer_start(&ir->timer,
         ktime_set(0, ir->polling * 1000000),
         HRTIMER_MODE_REL);
 }
 if (ir->sampling) {
  core->pci_irqmask |= PCI_INT_IR_SMPINT;
  cx_write(MO_DDS_IO, 0x33F286 * ir_samplerate);
  cx_write(MO_DDSCFG_IO, 0x5);
 }
 return 0;
}
