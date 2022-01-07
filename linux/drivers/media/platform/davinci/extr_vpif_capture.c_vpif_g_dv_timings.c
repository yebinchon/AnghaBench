
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpif_capture_config {struct vpif_capture_chan_config* chan_config; } ;
struct vpif_capture_chan_config {TYPE_1__* inputs; } ;
struct v4l2_dv_timings {int dummy; } ;
struct video_obj {struct v4l2_dv_timings dv_timings; } ;
struct video_device {int dummy; } ;
struct v4l2_input {scalar_t__ capabilities; } ;
struct file {int dummy; } ;
struct channel_obj {size_t channel_id; size_t input_idx; struct video_obj video; } ;
struct TYPE_4__ {struct vpif_capture_config* platform_data; } ;
struct TYPE_3__ {struct v4l2_input input; } ;


 int ENODATA ;
 scalar_t__ V4L2_IN_CAP_DV_TIMINGS ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 TYPE_2__* vpif_dev ;

__attribute__((used)) static int vpif_g_dv_timings(struct file *file, void *priv,
  struct v4l2_dv_timings *timings)
{
 struct vpif_capture_config *config = vpif_dev->platform_data;
 struct video_device *vdev = video_devdata(file);
 struct channel_obj *ch = video_get_drvdata(vdev);
 struct video_obj *vid_ch = &ch->video;
 struct vpif_capture_chan_config *chan_cfg;
 struct v4l2_input input;

 if (!config->chan_config[ch->channel_id].inputs)
  return -ENODATA;

 chan_cfg = &config->chan_config[ch->channel_id];
 input = chan_cfg->inputs[ch->input_idx].input;
 if (input.capabilities != V4L2_IN_CAP_DV_TIMINGS)
  return -ENODATA;

 *timings = vid_ch->dv_timings;

 return 0;
}
