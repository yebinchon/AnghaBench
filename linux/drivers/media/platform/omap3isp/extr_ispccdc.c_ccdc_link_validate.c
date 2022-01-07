
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int code; } ;
struct v4l2_subdev_format {TYPE_4__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct media_link {TYPE_1__* source; } ;
struct isp_ccdc_device {scalar_t__ input; } ;
struct TYPE_6__ {unsigned long data_lane_shift; } ;
struct TYPE_7__ {TYPE_2__ parallel; } ;
struct isp_bus_cfg {TYPE_3__ bus; } ;
struct TYPE_5__ {int entity; } ;


 scalar_t__ CCDC_INPUT_PARALLEL ;
 int EPIPE ;
 int ccdc_is_shiftable (int ,int ,unsigned long) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 struct isp_ccdc_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct isp_bus_cfg* v4l2_subdev_to_bus_cfg (struct v4l2_subdev*) ;

__attribute__((used)) static int ccdc_link_validate(struct v4l2_subdev *sd,
         struct media_link *link,
         struct v4l2_subdev_format *source_fmt,
         struct v4l2_subdev_format *sink_fmt)
{
 struct isp_ccdc_device *ccdc = v4l2_get_subdevdata(sd);
 unsigned long parallel_shift;


 if (source_fmt->format.width != sink_fmt->format.width ||
     source_fmt->format.height != sink_fmt->format.height)
  return -EPIPE;


 if (ccdc->input == CCDC_INPUT_PARALLEL) {
  struct v4l2_subdev *sd =
   media_entity_to_v4l2_subdev(link->source->entity);
  struct isp_bus_cfg *bus_cfg = v4l2_subdev_to_bus_cfg(sd);

  parallel_shift = bus_cfg->bus.parallel.data_lane_shift;
 } else {
  parallel_shift = 0;
 }


 if (!ccdc_is_shiftable(source_fmt->format.code,
          sink_fmt->format.code, parallel_shift))
  return -EPIPE;

 return 0;
}
