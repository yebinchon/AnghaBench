
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfe_output {scalar_t__ state; int wm_num; int* wm_idx; scalar_t__ drop_update_idx; scalar_t__ active_buf; } ;
struct TYPE_6__ {int pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct TYPE_5__ {struct v4l2_format active_fmt; } ;
struct vfe_line {int id; struct vfe_output output; TYPE_1__ video_out; } ;
struct vfe_device {int output_lock; TYPE_4__* camss; } ;
struct TYPE_8__ {int dev; } ;


 int EINVAL ;




 scalar_t__ VFE_OUTPUT_OFF ;
 scalar_t__ VFE_OUTPUT_RESERVED ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 int vfe_release_wm (struct vfe_device*,int) ;
 int vfe_reserve_wm (struct vfe_device*,int ) ;

__attribute__((used)) static int vfe_get_output(struct vfe_line *line)
{
 struct vfe_device *vfe = to_vfe(line);
 struct vfe_output *output;
 struct v4l2_format *f = &line->video_out.active_fmt;
 unsigned long flags;
 int i;
 int wm_idx;

 spin_lock_irqsave(&vfe->output_lock, flags);

 output = &line->output;
 if (output->state != VFE_OUTPUT_OFF) {
  dev_err(vfe->camss->dev, "Output is running\n");
  goto error;
 }
 output->state = VFE_OUTPUT_RESERVED;

 output->active_buf = 0;

 switch (f->fmt.pix_mp.pixelformat) {
 case 131:
 case 129:
 case 130:
 case 128:
  output->wm_num = 2;
  break;
 default:
  output->wm_num = 1;
  break;
 }

 for (i = 0; i < output->wm_num; i++) {
  wm_idx = vfe_reserve_wm(vfe, line->id);
  if (wm_idx < 0) {
   dev_err(vfe->camss->dev, "Can not reserve wm\n");
   goto error_get_wm;
  }
  output->wm_idx[i] = wm_idx;
 }

 output->drop_update_idx = 0;

 spin_unlock_irqrestore(&vfe->output_lock, flags);

 return 0;

error_get_wm:
 for (i--; i >= 0; i--)
  vfe_release_wm(vfe, output->wm_idx[i]);
 output->state = VFE_OUTPUT_OFF;
error:
 spin_unlock_irqrestore(&vfe->output_lock, flags);

 return -EINVAL;
}
