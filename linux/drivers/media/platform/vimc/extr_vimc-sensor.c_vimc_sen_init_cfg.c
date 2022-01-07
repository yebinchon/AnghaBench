
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {unsigned int num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct v4l2_mbus_framefmt {int dummy; } ;


 struct v4l2_mbus_framefmt fmt_default ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static int vimc_sen_init_cfg(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg)
{
 unsigned int i;

 for (i = 0; i < sd->entity.num_pads; i++) {
  struct v4l2_mbus_framefmt *mf;

  mf = v4l2_subdev_get_try_format(sd, cfg, i);
  *mf = fmt_default;
 }

 return 0;
}
