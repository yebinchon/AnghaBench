
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vpif_display_config {struct vpif_display_chan_config* chan_config; } ;
struct vpif_display_chan_config {TYPE_3__* outputs; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_5__ {int tvnorms; } ;
struct channel_obj {size_t channel_id; int output_idx; TYPE_1__ video_dev; struct v4l2_subdev* sd; } ;
struct TYPE_8__ {struct v4l2_subdev** sd; } ;
struct TYPE_6__ {int std; } ;
struct TYPE_7__ {TYPE_2__ output; int output_route; int input_route; } ;


 int ENOIOCTLCMD ;
 int s_routing ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int ,int ,int ) ;
 int video ;
 int vpif_err (char*) ;
 TYPE_4__ vpif_obj ;
 int vpif_output_to_subdev (struct vpif_display_config*,struct vpif_display_chan_config*,int) ;

__attribute__((used)) static int vpif_set_output(struct vpif_display_config *vpif_cfg,
        struct channel_obj *ch, int index)
{
 struct vpif_display_chan_config *chan_cfg =
  &vpif_cfg->chan_config[ch->channel_id];
 struct v4l2_subdev *sd = ((void*)0);
 u32 input = 0, output = 0;
 int sd_index;
 int ret;

 sd_index = vpif_output_to_subdev(vpif_cfg, chan_cfg, index);
 if (sd_index >= 0)
  sd = vpif_obj.sd[sd_index];

 if (sd) {
  input = chan_cfg->outputs[index].input_route;
  output = chan_cfg->outputs[index].output_route;
  ret = v4l2_subdev_call(sd, video, s_routing, input, output, 0);
  if (ret < 0 && ret != -ENOIOCTLCMD) {
   vpif_err("Failed to set output\n");
   return ret;
  }

 }
 ch->output_idx = index;
 ch->sd = sd;
 if (chan_cfg->outputs)

  ch->video_dev.tvnorms = chan_cfg->outputs[index].output.std;
 return 0;
}
