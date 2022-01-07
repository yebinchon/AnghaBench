
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct tda1997x_state {int * mbus_codes; } ;


 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int tda1997x_init_cfg(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg)
{
 struct tda1997x_state *state = to_state(sd);
 struct v4l2_mbus_framefmt *mf;

 mf = v4l2_subdev_get_try_format(sd, cfg, 0);
 mf->code = state->mbus_codes[0];

 return 0;
}
