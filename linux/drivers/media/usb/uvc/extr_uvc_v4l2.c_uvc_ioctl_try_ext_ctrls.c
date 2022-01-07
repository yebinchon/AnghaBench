
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {int dummy; } ;
struct uvc_fh {int dummy; } ;
struct file {int dummy; } ;


 int uvc_ioctl_s_try_ext_ctrls (struct uvc_fh*,struct v4l2_ext_controls*,int) ;

__attribute__((used)) static int uvc_ioctl_try_ext_ctrls(struct file *file, void *fh,
       struct v4l2_ext_controls *ctrls)
{
 struct uvc_fh *handle = fh;

 return uvc_ioctl_s_try_ext_ctrls(handle, ctrls, 0);
}
