
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpif_display_config {struct vpif_display_chan_config* chan_config; } ;
struct vpif_display_chan_config {TYPE_1__* outputs; } ;
struct video_device {int dummy; } ;
struct v4l2_output {scalar_t__ capabilities; } ;
struct file {int dummy; } ;
struct TYPE_10__ {int width; int bytesperline; } ;
struct TYPE_11__ {TYPE_3__ pix; } ;
struct TYPE_12__ {TYPE_4__ fmt; } ;
struct common_obj {TYPE_5__ fmt; int buffer_queue; } ;
struct TYPE_9__ {int stdid; int dv_timings; } ;
struct channel_obj {size_t channel_id; size_t output_idx; TYPE_2__ video; struct common_obj* common; } ;
struct TYPE_14__ {struct vpif_display_config* platform_data; } ;
struct TYPE_13__ {int v4l2_dev; } ;
struct TYPE_8__ {struct v4l2_output output; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODATA ;
 scalar_t__ V4L2_OUT_CAP_STD ;
 int VPIF_V4L2_STD ;
 size_t VPIF_VIDEO_INDEX ;
 int memset (int *,int ,int) ;
 int s_std ;
 int s_std_output ;
 int v4l2_device_call_until_err (int *,int,int ,int ,int) ;
 scalar_t__ vb2_is_busy (int *) ;
 int video ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 TYPE_7__* vpif_dev ;
 int vpif_err (char*) ;
 TYPE_6__ vpif_obj ;
 scalar_t__ vpif_update_resolution (struct channel_obj*) ;

__attribute__((used)) static int vpif_s_std(struct file *file, void *priv, v4l2_std_id std_id)
{
 struct vpif_display_config *config = vpif_dev->platform_data;
 struct video_device *vdev = video_devdata(file);
 struct channel_obj *ch = video_get_drvdata(vdev);
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 struct vpif_display_chan_config *chan_cfg;
 struct v4l2_output output;
 int ret;

 if (!config->chan_config[ch->channel_id].outputs)
  return -ENODATA;

 chan_cfg = &config->chan_config[ch->channel_id];
 output = chan_cfg->outputs[ch->output_idx].output;
 if (output.capabilities != V4L2_OUT_CAP_STD)
  return -ENODATA;

 if (vb2_is_busy(&common->buffer_queue))
  return -EBUSY;


 if (!(std_id & VPIF_V4L2_STD))
  return -EINVAL;


 ch->video.stdid = std_id;
 memset(&ch->video.dv_timings, 0, sizeof(ch->video.dv_timings));

 if (vpif_update_resolution(ch))
  return -EINVAL;

 common->fmt.fmt.pix.bytesperline = common->fmt.fmt.pix.width;

 ret = v4l2_device_call_until_err(&vpif_obj.v4l2_dev, 1, video,
      s_std_output, std_id);
 if (ret < 0) {
  vpif_err("Failed to set output standard\n");
  return ret;
 }

 ret = v4l2_device_call_until_err(&vpif_obj.v4l2_dev, 1, video,
       s_std, std_id);
 if (ret < 0)
  vpif_err("Failed to set standard for sub devices\n");
 return ret;
}
