
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct vpif_subdev_info {int name; } ;
struct vpif_capture_config {int (* setup_input_path ) (size_t,int ) ;struct vpif_subdev_info* subdev_info; struct vpif_capture_chan_config* chan_config; } ;
struct vpif_capture_chan_config {TYPE_4__* inputs; int vpif_if; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_7__ {int tvnorms; } ;
struct TYPE_6__ {int iface; } ;
struct channel_obj {size_t channel_id; int input_idx; TYPE_2__ video_dev; TYPE_1__ vpifparams; struct v4l2_subdev* sd; } ;
struct TYPE_10__ {struct v4l2_subdev** sd; } ;
struct TYPE_8__ {int std; } ;
struct TYPE_9__ {TYPE_3__ input; int output_route; int input_route; } ;


 int ENOIOCTLCMD ;
 int debug ;
 int s_routing ;
 int stub1 (size_t,int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int ,int ,int ) ;
 int video ;
 int vpif_dbg (int,int ,char*,...) ;
 int vpif_input_to_subdev (struct vpif_capture_config*,struct vpif_capture_chan_config*,int) ;
 TYPE_5__ vpif_obj ;

__attribute__((used)) static int vpif_set_input(
  struct vpif_capture_config *vpif_cfg,
  struct channel_obj *ch,
  int index)
{
 struct vpif_capture_chan_config *chan_cfg =
   &vpif_cfg->chan_config[ch->channel_id];
 struct vpif_subdev_info *subdev_info = ((void*)0);
 struct v4l2_subdev *sd = ((void*)0);
 u32 input = 0, output = 0;
 int sd_index;
 int ret;

 sd_index = vpif_input_to_subdev(vpif_cfg, chan_cfg, index);
 if (sd_index >= 0) {
  sd = vpif_obj.sd[sd_index];
  subdev_info = &vpif_cfg->subdev_info[sd_index];
 } else {

  return 0;
 }


 if (sd && vpif_cfg->setup_input_path) {
  ret = vpif_cfg->setup_input_path(ch->channel_id,
           subdev_info->name);
  if (ret < 0) {
   vpif_dbg(1, debug, "couldn't setup input path for the" " sub device %s, for input index %d\n",

   subdev_info->name, index);
   return ret;
  }
 }

 if (sd) {
  input = chan_cfg->inputs[index].input_route;
  output = chan_cfg->inputs[index].output_route;
  ret = v4l2_subdev_call(sd, video, s_routing,
    input, output, 0);
  if (ret < 0 && ret != -ENOIOCTLCMD) {
   vpif_dbg(1, debug, "Failed to set input\n");
   return ret;
  }
 }
 ch->input_idx = index;
 ch->sd = sd;

 ch->vpifparams.iface = chan_cfg->vpif_if;


 ch->video_dev.tvnorms = chan_cfg->inputs[index].input.std;
 return 0;
}
