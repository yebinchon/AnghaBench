
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_ref {int dummy; } ;
struct v4l2_ctrl_handler {int lock; } ;


 struct v4l2_ctrl_ref* find_ref (struct v4l2_ctrl_handler*,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

__attribute__((used)) static struct v4l2_ctrl_ref *find_ref_lock(
  struct v4l2_ctrl_handler *hdl, u32 id)
{
 struct v4l2_ctrl_ref *ref = ((void*)0);

 if (hdl) {
  mutex_lock(hdl->lock);
  ref = find_ref(hdl, id);
  mutex_unlock(hdl->lock);
 }
 return ref;
}
