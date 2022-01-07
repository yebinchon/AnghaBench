
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_event {int dummy; } ;


 int ENOBUFS ;
 int init_ir_raw_event_duration (int ,int,unsigned int) ;

__attribute__((used)) static inline int ir_raw_gen_pulse_space(struct ir_raw_event **ev,
      unsigned int *max,
      unsigned int pulse_width,
      unsigned int space_width)
{
 if (!*max)
  return -ENOBUFS;
 init_ir_raw_event_duration((*ev)++, 1, pulse_width);
 if (!--*max)
  return -ENOBUFS;
 init_ir_raw_event_duration((*ev)++, 0, space_width);
 --*max;
 return 0;
}
