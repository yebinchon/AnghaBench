
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ pad; int format; } ;
struct s5c73m3_frame_size {int dummy; } ;
struct s5c73m3 {int dummy; } ;


 int RES_ISP ;
 int RES_JPEG ;
 int S5C73M3_ISP_FMT ;
 scalar_t__ S5C73M3_ISP_PAD ;
 int S5C73M3_JPEG_FMT ;
 int s5c73m3_fill_mbus_fmt (int *,struct s5c73m3_frame_size const*,int ) ;
 struct s5c73m3_frame_size* s5c73m3_find_frame_size (int *,int ) ;

__attribute__((used)) static void s5c73m3_try_format(struct s5c73m3 *state,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt,
         const struct s5c73m3_frame_size **fs)
{
 u32 code;

 if (fmt->pad == S5C73M3_ISP_PAD) {
  *fs = s5c73m3_find_frame_size(&fmt->format, RES_ISP);
  code = S5C73M3_ISP_FMT;
 } else {
  *fs = s5c73m3_find_frame_size(&fmt->format, RES_JPEG);
  code = S5C73M3_JPEG_FMT;
 }

 s5c73m3_fill_mbus_fmt(&fmt->format, *fs, code);
}
