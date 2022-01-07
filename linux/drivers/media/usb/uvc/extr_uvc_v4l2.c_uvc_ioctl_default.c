
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_chain {int dummy; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;
struct file {int dummy; } ;


 long ENOTTY ;


 long uvc_ioctl_ctrl_map (struct uvc_video_chain*,void*) ;
 long uvc_xu_ctrl_query (struct uvc_video_chain*,void*) ;

__attribute__((used)) static long uvc_ioctl_default(struct file *file, void *fh, bool valid_prio,
         unsigned int cmd, void *arg)
{
 struct uvc_fh *handle = fh;
 struct uvc_video_chain *chain = handle->chain;

 switch (cmd) {

 case 129:
  return uvc_ioctl_ctrl_map(chain, arg);

 case 128:
  return uvc_xu_ctrl_query(chain, arg);

 default:
  return -ENOTTY;
 }
}
