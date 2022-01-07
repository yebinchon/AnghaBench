
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_event {int reset; int carrier_report; } ;



__attribute__((used)) static inline bool is_timing_event(struct ir_raw_event ev)
{
 return !ev.carrier_report && !ev.reset;
}
