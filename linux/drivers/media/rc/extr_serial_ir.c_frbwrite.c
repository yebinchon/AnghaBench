
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ir_raw_event {unsigned int duration; int pulse; } ;
struct TYPE_2__ {int rcdev; } ;


 unsigned int IR_MAX_DURATION ;
 int ir_raw_event_store_with_filter (int ,struct ir_raw_event*) ;
 TYPE_1__ serial_ir ;

__attribute__((used)) static void frbwrite(unsigned int l, bool is_pulse)
{

 static unsigned int ptr, pulse, space;
 struct ir_raw_event ev = {};

 if (ptr > 0 && is_pulse) {
  pulse += l;
  if (pulse > 250000) {
   ev.duration = space;
   ev.pulse = 0;
   ir_raw_event_store_with_filter(serial_ir.rcdev, &ev);
   ev.duration = pulse;
   ev.pulse = 1;
   ir_raw_event_store_with_filter(serial_ir.rcdev, &ev);
   ptr = 0;
   pulse = 0;
  }
  return;
 }
 if (!is_pulse) {
  if (ptr == 0) {
   if (l > 20000000) {
    space = l;
    ptr++;
    return;
   }
  } else {
   if (l > 20000000) {
    space += pulse;
    if (space > IR_MAX_DURATION)
     space = IR_MAX_DURATION;
    space += l;
    if (space > IR_MAX_DURATION)
     space = IR_MAX_DURATION;
    pulse = 0;
    return;
   }

   ev.duration = space;
   ev.pulse = 0;
   ir_raw_event_store_with_filter(serial_ir.rcdev, &ev);
   ev.duration = pulse;
   ev.pulse = 1;
   ir_raw_event_store_with_filter(serial_ir.rcdev, &ev);
   ptr = 0;
   pulse = 0;
  }
 }

 ev.duration = l;
 ev.pulse = is_pulse;
 ir_raw_event_store_with_filter(serial_ir.rcdev, &ev);
}
