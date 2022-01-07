
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_event {int pulse; int duration; } ;


 int TIME_CONST ;
 int US_TO_NS (unsigned long) ;
 int ir_raw_event_store_with_filter (int ,struct ir_raw_event*) ;
 int pr_debug (char*,int,unsigned long) ;
 int rcdev ;

__attribute__((used)) static void add_read_queue(int flag, unsigned long val)
{
 struct ir_raw_event ev = {};

 pr_debug("add flag %d with val %lu\n", flag, val);





 if (flag) {

  if (val > TIME_CONST / 2)
   val -= TIME_CONST / 2;
  else
   val = 1;
  ev.pulse = 1;
 } else {
  val += TIME_CONST / 2;
 }
 ev.duration = US_TO_NS(val);

 ir_raw_event_store_with_filter(rcdev, &ev);
}
