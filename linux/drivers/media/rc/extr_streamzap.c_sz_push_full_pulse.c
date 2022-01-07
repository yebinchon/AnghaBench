
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct streamzap_ir {int idle; scalar_t__ sum; int signal_last; int signal_start; } ;
struct ir_raw_event {int pulse; int duration; } ;


 void* IR_MAX_DURATION ;
 int SZ_RESOLUTION ;
 int USEC_PER_SEC ;
 void* US_TO_NS (int) ;
 int ktime_get_real () ;
 int ktime_us_delta (int ,int ) ;
 int sz_push (struct streamzap_ir*,struct ir_raw_event) ;

__attribute__((used)) static void sz_push_full_pulse(struct streamzap_ir *sz,
          unsigned char value)
{
 struct ir_raw_event rawir = {};

 if (sz->idle) {
  int delta;

  sz->signal_last = sz->signal_start;
  sz->signal_start = ktime_get_real();

  delta = ktime_us_delta(sz->signal_start, sz->signal_last);
  rawir.pulse = 0;
  if (delta > (15 * USEC_PER_SEC)) {

   rawir.duration = IR_MAX_DURATION;
  } else {
   rawir.duration = delta;
   rawir.duration -= sz->sum;
   rawir.duration = US_TO_NS(rawir.duration);
   rawir.duration = (rawir.duration > IR_MAX_DURATION) ?
      IR_MAX_DURATION : rawir.duration;
  }
  sz_push(sz, rawir);

  sz->idle = 0;
  sz->sum = 0;
 }

 rawir.pulse = 1;
 rawir.duration = ((int) value) * SZ_RESOLUTION;
 rawir.duration += SZ_RESOLUTION / 2;
 sz->sum += rawir.duration;
 rawir.duration = US_TO_NS(rawir.duration);
 rawir.duration = (rawir.duration > IR_MAX_DURATION) ?
    IR_MAX_DURATION : rawir.duration;
 sz_push(sz, rawir);
}
