
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ which; int pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3_frame_size {int dummy; } ;
struct s5c73m3 {int apply_fmt; int lock; scalar_t__ streaming; int mbus_code; struct s5c73m3_frame_size const** oif_pix_size; } ;


 int EBUSY ;



 size_t RES_ISP ;
 size_t RES_JPEG ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int s5c73m3_oif_try_format (struct s5c73m3*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct s5c73m3_frame_size const**) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ;

__attribute__((used)) static int s5c73m3_oif_set_fmt(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_format *fmt)
{
 const struct s5c73m3_frame_size *frame_size = ((void*)0);
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 struct v4l2_mbus_framefmt *mf;
 int ret = 0;

 mutex_lock(&state->lock);

 s5c73m3_oif_try_format(state, cfg, fmt, &frame_size);

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
  *mf = fmt->format;
  if (fmt->pad == 130) {
   mf = v4l2_subdev_get_try_format(sd, cfg, 128);
   mf->width = fmt->format.width;
   mf->height = fmt->format.height;
  }
 } else {
  switch (fmt->pad) {
  case 130:
   state->oif_pix_size[RES_ISP] = frame_size;
   break;
  case 129:
   state->oif_pix_size[RES_JPEG] = frame_size;
   break;
  case 128:
   state->mbus_code = fmt->format.code;
   break;
  default:
   ret = -EBUSY;
  }

  if (state->streaming)
   ret = -EBUSY;
  else
   state->apply_fmt = 1;
 }

 mutex_unlock(&state->lock);

 return ret;
}
