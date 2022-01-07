
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_4__ {int code; } ;
struct v4l2_subdev_format {int pad; TYPE_1__ format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3_frame_size {int dummy; } ;
struct s5c73m3 {struct s5c73m3_frame_size** oif_pix_size; struct v4l2_subdev sensor_sd; } ;





 size_t RES_ISP ;
 size_t RES_JPEG ;
 int S5C73M3_ISP_FMT ;
 int S5C73M3_JPEG_FMT ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int s5c73m3_fill_mbus_fmt (TYPE_1__*,struct s5c73m3_frame_size const*,int ) ;
 struct s5c73m3_frame_size* s5c73m3_find_frame_size (TYPE_1__*,size_t) ;
 TYPE_1__* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int const) ;

__attribute__((used)) static void s5c73m3_oif_try_format(struct s5c73m3 *state,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt,
       const struct s5c73m3_frame_size **fs)
{
 struct v4l2_subdev *sd = &state->sensor_sd;
 u32 code;

 switch (fmt->pad) {
 case 130:
  *fs = s5c73m3_find_frame_size(&fmt->format, RES_ISP);
  code = S5C73M3_ISP_FMT;
  break;
 case 129:
  *fs = s5c73m3_find_frame_size(&fmt->format, RES_JPEG);
  code = S5C73M3_JPEG_FMT;
  break;
 case 128:
 default:
  if (fmt->format.code == S5C73M3_JPEG_FMT)
   code = S5C73M3_JPEG_FMT;
  else
   code = S5C73M3_ISP_FMT;

  if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE)
   *fs = state->oif_pix_size[RES_ISP];
  else
   *fs = s5c73m3_find_frame_size(
      v4l2_subdev_get_try_format(sd, cfg,
       130),
      RES_ISP);
  break;
 }

 s5c73m3_fill_mbus_fmt(&fmt->format, *fs, code);
}
