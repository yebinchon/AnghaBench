
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; } ;
struct TYPE_7__ {scalar_t__ tvnorms; } ;
struct TYPE_6__ {scalar_t__ tvnorms; } ;
struct vivid_dev {size_t input; unsigned int num_inputs; int* input_type; int tv_audio_input; int* input_brightness; unsigned int* dv_timings_signal_mode; unsigned int* std_signal_mode; unsigned int* query_dv_timings; scalar_t__ ctrl_standard; scalar_t__ ctrl_std_signal_mode; scalar_t__ ctrl_dv_timings; scalar_t__ ctrl_dv_timings_signal_mode; scalar_t__ brightness; scalar_t__ colorspace; TYPE_4__ src_rect; TYPE_3__ vid_cap_dev; TYPE_2__ vbi_cap_dev; int vb_vbi_cap_q; int vb_vid_cap_q; TYPE_1__* dv_timings_cap; } ;
struct v4l2_bt_timings {int flags; } ;
struct file {int dummy; } ;
struct TYPE_5__ {struct v4l2_bt_timings bt; } ;


 int EBUSY ;
 int EINVAL ;

 unsigned int SELECTED_DV_TIMINGS ;


 int V4L2_DV_FL_IS_CE_VIDEO ;
 scalar_t__ V4L2_STD_ALL ;
 unsigned int VIVID_CS_170M ;
 unsigned int VIVID_CS_709 ;
 unsigned int VIVID_CS_SRGB ;

 int v4l2_ctrl_activate (scalar_t__,int) ;
 int v4l2_ctrl_modify_range (scalar_t__,int,int,int,int) ;
 int v4l2_ctrl_s_ctrl (scalar_t__,unsigned int) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_is_hdmi_cap (struct vivid_dev*) ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;
 int vivid_update_format_cap (struct vivid_dev*,int) ;

int vidioc_s_input(struct file *file, void *priv, unsigned i)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct v4l2_bt_timings *bt = &dev->dv_timings_cap[dev->input].bt;
 unsigned brightness;

 if (i >= dev->num_inputs)
  return -EINVAL;

 if (i == dev->input)
  return 0;

 if (vb2_is_busy(&dev->vb_vid_cap_q) || vb2_is_busy(&dev->vb_vbi_cap_q))
  return -EBUSY;

 dev->input = i;
 dev->vid_cap_dev.tvnorms = 0;
 if (dev->input_type[i] == 129 || dev->input_type[i] == 130) {
  dev->tv_audio_input = (dev->input_type[i] == 129) ? 0 : 1;
  dev->vid_cap_dev.tvnorms = V4L2_STD_ALL;
 }
 dev->vbi_cap_dev.tvnorms = dev->vid_cap_dev.tvnorms;
 vivid_update_format_cap(dev, 0);

 if (dev->colorspace) {
  switch (dev->input_type[i]) {
  case 128:
   v4l2_ctrl_s_ctrl(dev->colorspace, VIVID_CS_SRGB);
   break;
  case 129:
  case 130:
   v4l2_ctrl_s_ctrl(dev->colorspace, VIVID_CS_170M);
   break;
  case 131:
   if (bt->flags & V4L2_DV_FL_IS_CE_VIDEO) {
    if (dev->src_rect.width == 720 && dev->src_rect.height <= 576)
     v4l2_ctrl_s_ctrl(dev->colorspace, VIVID_CS_170M);
    else
     v4l2_ctrl_s_ctrl(dev->colorspace, VIVID_CS_709);
   } else {
    v4l2_ctrl_s_ctrl(dev->colorspace, VIVID_CS_SRGB);
   }
   break;
  }
 }
 brightness = 128 * i + dev->input_brightness[i];
 v4l2_ctrl_modify_range(dev->brightness,
   128 * i, 255 + 128 * i, 1, 128 + 128 * i);
 v4l2_ctrl_s_ctrl(dev->brightness, brightness);


 v4l2_ctrl_activate(dev->ctrl_dv_timings_signal_mode,
      vivid_is_hdmi_cap(dev));
 v4l2_ctrl_activate(dev->ctrl_dv_timings, vivid_is_hdmi_cap(dev) &&
      dev->dv_timings_signal_mode[dev->input] ==
      SELECTED_DV_TIMINGS);
 v4l2_ctrl_activate(dev->ctrl_std_signal_mode, vivid_is_sdtv_cap(dev));
 v4l2_ctrl_activate(dev->ctrl_standard, vivid_is_sdtv_cap(dev) &&
      dev->std_signal_mode[dev->input]);

 if (vivid_is_hdmi_cap(dev)) {
  v4l2_ctrl_s_ctrl(dev->ctrl_dv_timings_signal_mode,
     dev->dv_timings_signal_mode[dev->input]);
  v4l2_ctrl_s_ctrl(dev->ctrl_dv_timings,
     dev->query_dv_timings[dev->input]);
 } else if (vivid_is_sdtv_cap(dev)) {
  v4l2_ctrl_s_ctrl(dev->ctrl_std_signal_mode,
     dev->std_signal_mode[dev->input]);
  v4l2_ctrl_s_ctrl(dev->ctrl_standard,
     dev->std_signal_mode[dev->input]);
 }

 return 0;
}
