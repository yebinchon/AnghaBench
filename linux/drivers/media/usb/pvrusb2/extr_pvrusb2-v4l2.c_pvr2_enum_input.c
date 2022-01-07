
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct v4l2_input {size_t index; scalar_t__* name; int type; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {size_t input_cnt; int* input_map; TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct pvr2_ctrl {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int EINVAL ;
 int PVR2_CID_INPUT ;





 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_INPUT_TYPE_TUNER ;
 int memset (struct v4l2_input*,int ,int) ;
 int pvr2_ctrl_get_valname (struct pvr2_ctrl*,int,scalar_t__*,int,unsigned int*) ;
 struct pvr2_ctrl* pvr2_hdw_get_ctrl_by_id (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_enum_input(struct file *file, void *priv, struct v4l2_input *vi)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 struct pvr2_ctrl *cptr;
 struct v4l2_input tmp;
 unsigned int cnt;
 int val;

 cptr = pvr2_hdw_get_ctrl_by_id(hdw, PVR2_CID_INPUT);

 memset(&tmp, 0, sizeof(tmp));
 tmp.index = vi->index;
 if (vi->index >= fh->input_cnt)
  return -EINVAL;
 val = fh->input_map[vi->index];
 switch (val) {
 case 128:
 case 131:
 case 130:
  tmp.type = V4L2_INPUT_TYPE_TUNER;
  break;
 case 129:
 case 132:
  tmp.type = V4L2_INPUT_TYPE_CAMERA;
  break;
 default:
  return -EINVAL;
 }

 cnt = 0;
 pvr2_ctrl_get_valname(cptr, val,
   tmp.name, sizeof(tmp.name) - 1, &cnt);
 tmp.name[cnt] = 0;
 *vi = tmp;
 return 0;
}
