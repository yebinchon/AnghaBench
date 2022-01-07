
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_handler {int requests; int req_obj; } ;
struct media_request {int dummy; } ;


 int list_add_tail (int *,int *) ;
 int media_request_object_bind (struct media_request*,int *,struct v4l2_ctrl_handler*,int,int *) ;
 int req_ops ;
 int v4l2_ctrl_request_clone (struct v4l2_ctrl_handler*,struct v4l2_ctrl_handler*) ;

__attribute__((used)) static int v4l2_ctrl_request_bind(struct media_request *req,
      struct v4l2_ctrl_handler *hdl,
      struct v4l2_ctrl_handler *from)
{
 int ret;

 ret = v4l2_ctrl_request_clone(hdl, from);

 if (!ret) {
  ret = media_request_object_bind(req, &req_ops,
      from, 0, &hdl->req_obj);
  if (!ret)
   list_add_tail(&hdl->requests, &from->requests);
 }
 return ret;
}
