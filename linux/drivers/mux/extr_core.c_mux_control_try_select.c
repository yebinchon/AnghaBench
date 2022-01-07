
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_control {int lock; } ;


 int EBUSY ;
 int __mux_control_select (struct mux_control*,unsigned int) ;
 scalar_t__ down_trylock (int *) ;
 int up (int *) ;

int mux_control_try_select(struct mux_control *mux, unsigned int state)
{
 int ret;

 if (down_trylock(&mux->lock))
  return -EBUSY;

 ret = __mux_control_select(mux, state);

 if (ret < 0)
  up(&mux->lock);

 return ret;
}
