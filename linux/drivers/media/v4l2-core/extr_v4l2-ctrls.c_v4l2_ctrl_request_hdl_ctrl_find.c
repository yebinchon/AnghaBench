
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_ref {struct v4l2_ctrl* ctrl; struct v4l2_ctrl_ref* req; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;


 struct v4l2_ctrl_ref* find_ref_lock (struct v4l2_ctrl_handler*,int ) ;

struct v4l2_ctrl *
v4l2_ctrl_request_hdl_ctrl_find(struct v4l2_ctrl_handler *hdl, u32 id)
{
 struct v4l2_ctrl_ref *ref = find_ref_lock(hdl, id);

 return (ref && ref->req == ref) ? ref->ctrl : ((void*)0);
}
