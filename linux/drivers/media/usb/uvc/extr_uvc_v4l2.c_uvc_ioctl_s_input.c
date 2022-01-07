
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct uvc_video_chain {TYPE_2__* dev; TYPE_1__* selector; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int quirks; int intfnum; } ;
struct TYPE_3__ {unsigned int bNrInPins; int id; } ;


 int EINVAL ;
 int UVC_QUIRK_IGNORE_SELECTOR_UNIT ;
 int UVC_SET_CUR ;
 int UVC_SU_INPUT_SELECT_CONTROL ;
 int uvc_acquire_privileges (struct uvc_fh*) ;
 int uvc_query_ctrl (TYPE_2__*,int ,int ,int ,int ,unsigned int*,int) ;

__attribute__((used)) static int uvc_ioctl_s_input(struct file *file, void *fh, unsigned int input)
{
 struct uvc_fh *handle = fh;
 struct uvc_video_chain *chain = handle->chain;
 int ret;
 u32 i;

 ret = uvc_acquire_privileges(handle);
 if (ret < 0)
  return ret;

 if (chain->selector == ((void*)0) ||
     (chain->dev->quirks & UVC_QUIRK_IGNORE_SELECTOR_UNIT)) {
  if (input)
   return -EINVAL;
  return 0;
 }

 if (input >= chain->selector->bNrInPins)
  return -EINVAL;

 i = input + 1;
 return uvc_query_ctrl(chain->dev, UVC_SET_CUR, chain->selector->id,
         chain->dev->intfnum, UVC_SU_INPUT_SELECT_CONTROL,
         &i, 1);
}
