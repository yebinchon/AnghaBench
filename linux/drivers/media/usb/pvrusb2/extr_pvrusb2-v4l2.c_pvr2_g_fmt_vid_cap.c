
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_7__ {TYPE_4__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_3__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_8__ {struct pvr2_hdw* hdw; } ;


 int PVR2_CID_HRES ;
 int PVR2_CID_VRES ;
 size_t PVR_FORMAT_PIX ;
 int memcpy (struct v4l2_format*,int *,int) ;
 int pvr2_ctrl_get_value (int ,int*) ;
 int pvr2_hdw_get_ctrl_by_id (struct pvr2_hdw*,int ) ;
 int * pvr_format ;

__attribute__((used)) static int pvr2_g_fmt_vid_cap(struct file *file, void *priv, struct v4l2_format *vf)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 int val;

 memcpy(vf, &pvr_format[PVR_FORMAT_PIX], sizeof(struct v4l2_format));
 val = 0;
 pvr2_ctrl_get_value(
   pvr2_hdw_get_ctrl_by_id(hdw, PVR2_CID_HRES),
   &val);
 vf->fmt.pix.width = val;
 val = 0;
 pvr2_ctrl_get_value(
   pvr2_hdw_get_ctrl_by_id(hdw, PVR2_CID_VRES),
   &val);
 vf->fmt.pix.height = val;
 return 0;
}
