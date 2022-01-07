
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tvnorms; } ;
struct TYPE_3__ {scalar_t__ tvnorms; } ;
struct vivid_dev {unsigned int num_outputs; unsigned int output; scalar_t__* output_type; int * display_present; int ctrl_display_present; TYPE_2__ vid_out_dev; TYPE_1__ vbi_out_dev; scalar_t__ tv_audio_output; int vb_vbi_out_q; int vb_vid_out_q; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ SVID ;
 scalar_t__ V4L2_STD_ALL ;
 int v4l2_ctrl_activate (int ,scalar_t__) ;
 int v4l2_ctrl_s_ctrl (int ,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 scalar_t__ vivid_is_hdmi_out (struct vivid_dev*) ;
 int vivid_update_format_out (struct vivid_dev*) ;

int vidioc_s_output(struct file *file, void *priv, unsigned o)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (o >= dev->num_outputs)
  return -EINVAL;

 if (o == dev->output)
  return 0;

 if (vb2_is_busy(&dev->vb_vid_out_q) || vb2_is_busy(&dev->vb_vbi_out_q))
  return -EBUSY;

 dev->output = o;
 dev->tv_audio_output = 0;
 if (dev->output_type[o] == SVID)
  dev->vid_out_dev.tvnorms = V4L2_STD_ALL;
 else
  dev->vid_out_dev.tvnorms = 0;

 dev->vbi_out_dev.tvnorms = dev->vid_out_dev.tvnorms;
 vivid_update_format_out(dev);

 v4l2_ctrl_activate(dev->ctrl_display_present, vivid_is_hdmi_out(dev));
 if (vivid_is_hdmi_out(dev))
  v4l2_ctrl_s_ctrl(dev->ctrl_display_present,
     dev->display_present[dev->output]);

 return 0;
}
