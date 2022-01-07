
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct v4l2_frequency {scalar_t__ tuner; int frequency; } const v4l2_frequency ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int freq; TYPE_1__ board; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int call_all (struct cx88_core*,int ,int ,struct v4l2_frequency const*) ;
 int cx88_newstation (struct cx88_core*) ;
 int cx88_set_tvaudio (struct cx88_core*) ;
 int g_frequency ;
 int s_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int,int) ;

int cx88_set_freq(struct cx88_core *core,
    const struct v4l2_frequency *f)
{
 struct v4l2_frequency new_freq = *f;

 if (unlikely(core->board.tuner_type == UNSET))
  return -EINVAL;
 if (unlikely(f->tuner != 0))
  return -EINVAL;

 cx88_newstation(core);
 call_all(core, tuner, s_frequency, f);
 call_all(core, tuner, g_frequency, &new_freq);
 core->freq = new_freq.frequency;


 usleep_range(10000, 20000);
 cx88_set_tvaudio(core);

 return 0;
}
