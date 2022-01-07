
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ir_raw_event {int pulse; unsigned int duration; } ;
struct cx88_core {struct cx88_IR* ir; } ;
struct cx88_IR {TYPE_1__* dev; int sampling; } ;
struct TYPE_3__ {scalar_t__ idle; } ;


 int MO_SAMPLE_IO ;
 int NSEC_PER_SEC ;
 int cx_read (int ) ;
 scalar_t__ fls (int) ;
 int ir_raw_event_handle (TYPE_1__*) ;
 int ir_raw_event_store_with_filter (TYPE_1__*,struct ir_raw_event*) ;
 unsigned int ir_samplerate ;
 unsigned int min (unsigned int,scalar_t__) ;

void cx88_ir_irq(struct cx88_core *core)
{
 struct cx88_IR *ir = core->ir;
 u32 samples;
 unsigned int todo, bits;
 struct ir_raw_event ev = {};

 if (!ir || !ir->sampling)
  return;






 samples = cx_read(MO_SAMPLE_IO);

 if (samples == 0xff && ir->dev->idle)
  return;

 for (todo = 32; todo > 0; todo -= bits) {
  ev.pulse = samples & 0x80000000 ? 0 : 1;
  bits = min(todo, 32U - fls(ev.pulse ? samples : ~samples));
  ev.duration = (bits * (NSEC_PER_SEC / 1000)) / ir_samplerate;
  ir_raw_event_store_with_filter(ir->dev, &ev);
  samples <<= bits;
 }
 ir_raw_event_handle(ir->dev);
}
