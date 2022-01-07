
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int dummy; } ;
struct uvc_fh {int dummy; } ;


 int __uvc_ctrl_commit (struct uvc_fh*,int ,struct v4l2_ext_control const*,unsigned int) ;

__attribute__((used)) static inline int uvc_ctrl_commit(struct uvc_fh *handle,
      const struct v4l2_ext_control *xctrls,
      unsigned int xctrls_count)
{
 return __uvc_ctrl_commit(handle, 0, xctrls, xctrls_count);
}
