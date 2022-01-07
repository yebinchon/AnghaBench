
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct uvc_video_chain {TYPE_2__* dev; TYPE_1__* selector; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int quirks; int intfnum; } ;
struct TYPE_3__ {int id; } ;


 int UVC_GET_CUR ;
 int UVC_QUIRK_IGNORE_SELECTOR_UNIT ;
 int UVC_SU_INPUT_SELECT_CONTROL ;
 int uvc_query_ctrl (TYPE_2__*,int ,int ,int ,int ,int*,int) ;

__attribute__((used)) static int uvc_ioctl_g_input(struct file *file, void *fh, unsigned int *input)
{
 struct uvc_fh *handle = fh;
 struct uvc_video_chain *chain = handle->chain;
 int ret;
 u8 i;

 if (chain->selector == ((void*)0) ||
     (chain->dev->quirks & UVC_QUIRK_IGNORE_SELECTOR_UNIT)) {
  *input = 0;
  return 0;
 }

 ret = uvc_query_ctrl(chain->dev, UVC_GET_CUR, chain->selector->id,
        chain->dev->intfnum, UVC_SU_INPUT_SELECT_CONTROL,
        &i, 1);
 if (ret < 0)
  return ret;

 *input = i - 1;
 return 0;
}
