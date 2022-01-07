
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_handler {int error; } ;



__attribute__((used)) static inline int handler_set_err(struct v4l2_ctrl_handler *hdl, int err)
{
 if (hdl->error == 0)
  hdl->error = err;
 return err;
}
