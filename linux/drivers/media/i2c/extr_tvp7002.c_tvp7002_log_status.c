
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev {int name; } ;
struct v4l2_bt_timings {int height; int width; } ;
struct tvp7002 {int hdl; scalar_t__ streaming; TYPE_2__* current_timings; } ;
struct TYPE_7__ {struct v4l2_bt_timings bt; } ;
struct TYPE_8__ {TYPE_3__ timings; } ;
struct TYPE_5__ {struct v4l2_bt_timings bt; } ;
struct TYPE_6__ {TYPE_1__ timings; } ;


 int NUM_TIMINGS ;
 struct tvp7002* to_tvp7002 (struct v4l2_subdev*) ;
 int tvp7002_query_dv (struct v4l2_subdev*,int*) ;
 TYPE_4__* tvp7002_timings ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;
 int v4l2_info (struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int tvp7002_log_status(struct v4l2_subdev *sd)
{
 struct tvp7002 *device = to_tvp7002(sd);
 const struct v4l2_bt_timings *bt;
 int detected;


 tvp7002_query_dv(sd, &detected);

 bt = &device->current_timings->timings.bt;
 v4l2_info(sd, "Selected DV Timings: %ux%u\n", bt->width, bt->height);
 if (detected == NUM_TIMINGS) {
  v4l2_info(sd, "Detected DV Timings: None\n");
 } else {
  bt = &tvp7002_timings[detected].timings.bt;
  v4l2_info(sd, "Detected DV Timings: %ux%u\n",
    bt->width, bt->height);
 }
 v4l2_info(sd, "Streaming enabled: %s\n",
     device->streaming ? "yes" : "no");


 v4l2_ctrl_handler_log_status(&device->hdl, sd->name);

 return 0;
}
