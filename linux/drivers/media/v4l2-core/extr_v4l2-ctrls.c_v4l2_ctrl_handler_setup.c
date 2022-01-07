
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_handler {int lock; } ;


 int __v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *hdl)
{
 int ret;

 if (hdl == ((void*)0))
  return 0;

 mutex_lock(hdl->lock);
 ret = __v4l2_ctrl_handler_setup(hdl);
 mutex_unlock(hdl->lock);

 return ret;
}
