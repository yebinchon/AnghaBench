
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_control {scalar_t__ idle_state; scalar_t__ cached_state; int lock; } ;


 scalar_t__ MUX_IDLE_AS_IS ;
 int mux_control_set (struct mux_control*,scalar_t__) ;
 int up (int *) ;

int mux_control_deselect(struct mux_control *mux)
{
 int ret = 0;

 if (mux->idle_state != MUX_IDLE_AS_IS &&
     mux->idle_state != mux->cached_state)
  ret = mux_control_set(mux, mux->idle_state);

 up(&mux->lock);

 return ret;
}
