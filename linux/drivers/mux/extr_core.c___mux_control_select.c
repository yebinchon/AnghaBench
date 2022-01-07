
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_control {int states; int cached_state; int idle_state; } ;


 int EINVAL ;
 int MUX_IDLE_AS_IS ;
 scalar_t__ WARN_ON (int) ;
 int mux_control_set (struct mux_control*,int) ;

__attribute__((used)) static int __mux_control_select(struct mux_control *mux, int state)
{
 int ret;

 if (WARN_ON(state < 0 || state >= mux->states))
  return -EINVAL;

 if (mux->cached_state == state)
  return 0;

 ret = mux_control_set(mux, state);
 if (ret >= 0)
  return 0;


 if (mux->idle_state != MUX_IDLE_AS_IS)
  mux_control_set(mux, mux->idle_state);

 return ret;
}
