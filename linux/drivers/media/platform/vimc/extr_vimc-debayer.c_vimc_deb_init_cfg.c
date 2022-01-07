
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vimc_deb_device {int src_code; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {unsigned int num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct v4l2_mbus_framefmt {int code; } ;


 struct v4l2_mbus_framefmt sink_fmt_default ;
 struct vimc_deb_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static int vimc_deb_init_cfg(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg)
{
 struct vimc_deb_device *vdeb = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *mf;
 unsigned int i;

 mf = v4l2_subdev_get_try_format(sd, cfg, 0);
 *mf = sink_fmt_default;

 for (i = 1; i < sd->entity.num_pads; i++) {
  mf = v4l2_subdev_get_try_format(sd, cfg, i);
  *mf = sink_fmt_default;
  mf->code = vdeb->src_code;
 }

 return 0;
}
