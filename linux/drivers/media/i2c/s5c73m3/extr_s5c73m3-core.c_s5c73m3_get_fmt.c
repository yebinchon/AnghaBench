
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3_frame_size {int dummy; } ;
struct s5c73m3 {int lock; struct s5c73m3_frame_size** sensor_pix_size; } ;


 int EINVAL ;
 size_t RES_ISP ;
 size_t RES_JPEG ;
 int S5C73M3_ISP_FMT ;

 int S5C73M3_JPEG_FMT ;

 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5c73m3_fill_mbus_fmt (int *,struct s5c73m3_frame_size const*,int ) ;
 struct s5c73m3* sensor_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int * v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ;

__attribute__((used)) static int s5c73m3_get_fmt(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct s5c73m3 *state = sensor_sd_to_s5c73m3(sd);
 const struct s5c73m3_frame_size *fs;
 u32 code;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  fmt->format = *v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
  return 0;
 }

 mutex_lock(&state->lock);

 switch (fmt->pad) {
 case 129:
  code = S5C73M3_ISP_FMT;
  fs = state->sensor_pix_size[RES_ISP];
  break;
 case 128:
  code = S5C73M3_JPEG_FMT;
  fs = state->sensor_pix_size[RES_JPEG];
  break;
 default:
  mutex_unlock(&state->lock);
  return -EINVAL;
 }
 s5c73m3_fill_mbus_fmt(&fmt->format, fs, code);

 mutex_unlock(&state->lock);
 return 0;
}
