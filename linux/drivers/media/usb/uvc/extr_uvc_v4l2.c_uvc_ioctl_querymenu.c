
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int dummy; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;
struct file {int dummy; } ;


 int uvc_query_v4l2_menu (struct uvc_video_chain*,struct v4l2_querymenu*) ;

__attribute__((used)) static int uvc_ioctl_querymenu(struct file *file, void *fh,
          struct v4l2_querymenu *qm)
{
 struct uvc_fh *handle = fh;
 struct uvc_video_chain *chain = handle->chain;

 return uvc_query_v4l2_menu(chain, qm);
}
