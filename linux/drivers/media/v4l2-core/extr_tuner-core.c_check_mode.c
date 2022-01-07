
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner {int mode_mask; } ;
typedef enum v4l2_tuner_type { ____Placeholder_v4l2_tuner_type } v4l2_tuner_type ;


 int EINVAL ;
 int T_ANALOG_TV ;
 int T_RADIO ;
 int V4L2_TUNER_RADIO ;

__attribute__((used)) static inline int check_mode(struct tuner *t, enum v4l2_tuner_type mode)
{
 int t_mode;
 if (mode == V4L2_TUNER_RADIO)
  t_mode = T_RADIO;
 else
  t_mode = T_ANALOG_TV;

 if ((t_mode & t->mode_mask) == 0)
  return -EINVAL;

 return 0;
}
