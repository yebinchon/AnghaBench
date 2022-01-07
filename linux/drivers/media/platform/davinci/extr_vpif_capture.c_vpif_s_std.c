
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpif_capture_config {struct vpif_capture_chan_config* chan_config; } ;
struct vpif_capture_chan_config {TYPE_1__* inputs; } ;
struct video_device {int dummy; } ;
struct v4l2_input {scalar_t__ capabilities; } ;
struct file {int dummy; } ;
struct common_obj {int buffer_queue; } ;
struct TYPE_5__ {int dv_timings; int stdid; } ;
struct channel_obj {size_t channel_id; size_t input_idx; int sd; TYPE_2__ video; struct common_obj* common; } ;
struct TYPE_6__ {struct vpif_capture_config* platform_data; } ;
struct TYPE_4__ {struct v4l2_input input; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODATA ;
 int ENODEV ;
 int ENOIOCTLCMD ;
 scalar_t__ V4L2_IN_CAP_STD ;
 size_t VPIF_VIDEO_INDEX ;
 int debug ;
 int memset (int *,int ,int) ;
 int s_std ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 int video ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 int vpif_dbg (int,int ,char*) ;
 TYPE_3__* vpif_dev ;
 int vpif_err (char*) ;
 scalar_t__ vpif_update_std_info (struct channel_obj*) ;

__attribute__((used)) static int vpif_s_std(struct file *file, void *priv, v4l2_std_id std_id)
{
 struct vpif_capture_config *config = vpif_dev->platform_data;
 struct video_device *vdev = video_devdata(file);
 struct channel_obj *ch = video_get_drvdata(vdev);
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 struct vpif_capture_chan_config *chan_cfg;
 struct v4l2_input input;
 int ret;

 vpif_dbg(2, debug, "vpif_s_std\n");

 if (!config->chan_config[ch->channel_id].inputs)
  return -ENODATA;

 chan_cfg = &config->chan_config[ch->channel_id];
 input = chan_cfg->inputs[ch->input_idx].input;
 if (input.capabilities != V4L2_IN_CAP_STD)
  return -ENODATA;

 if (vb2_is_busy(&common->buffer_queue))
  return -EBUSY;


 ch->video.stdid = std_id;
 memset(&ch->video.dv_timings, 0, sizeof(ch->video.dv_timings));


 if (vpif_update_std_info(ch)) {
  vpif_err("Error getting the standard info\n");
  return -EINVAL;
 }


 ret = v4l2_subdev_call(ch->sd, video, s_std, std_id);
 if (ret && ret != -ENOIOCTLCMD && ret != -ENODEV) {
  vpif_dbg(1, debug, "Failed to set standard for sub devices\n");
  return ret;
 }
 return 0;
}
