
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_control {int lock; } ;


 int __mux_control_select (struct mux_control*,unsigned int) ;
 int down_killable (int *) ;
 int up (int *) ;

int mux_control_select(struct mux_control *mux, unsigned int state)
{
 int ret;

 ret = down_killable(&mux->lock);
 if (ret < 0)
  return ret;

 ret = __mux_control_select(mux, state);

 if (ret < 0)
  up(&mux->lock);

 return ret;
}
