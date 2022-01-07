
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_event {unsigned int duration; } ;



__attribute__((used)) static inline void decrease_duration(struct ir_raw_event *ev, unsigned duration)
{
 if (duration > ev->duration)
  ev->duration = 0;
 else
  ev->duration -= duration;
}
