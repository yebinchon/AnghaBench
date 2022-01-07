
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; scalar_t__ width; scalar_t__ height; int colorspace; int field; } ;
struct ov7670_win_size {scalar_t__ width; scalar_t__ height; } ;
struct ov7670_info {scalar_t__ min_width; scalar_t__ min_height; struct v4l2_mbus_framefmt format; TYPE_1__* devtype; } ;
struct ov7670_format_struct {scalar_t__ mbus_code; int colorspace; } ;
struct TYPE_2__ {unsigned int n_win_sizes; struct ov7670_win_size* win_sizes; } ;


 int N_OV7670_FMTS ;
 int V4L2_FIELD_NONE ;
 struct ov7670_format_struct* ov7670_formats ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_try_fmt_internal(struct v4l2_subdev *sd,
  struct v4l2_mbus_framefmt *fmt,
  struct ov7670_format_struct **ret_fmt,
  struct ov7670_win_size **ret_wsize)
{
 int index, i;
 struct ov7670_win_size *wsize;
 struct ov7670_info *info = to_state(sd);
 unsigned int n_win_sizes = info->devtype->n_win_sizes;
 unsigned int win_sizes_limit = n_win_sizes;

 for (index = 0; index < N_OV7670_FMTS; index++)
  if (ov7670_formats[index].mbus_code == fmt->code)
   break;
 if (index >= N_OV7670_FMTS) {

  index = 0;
  fmt->code = ov7670_formats[0].mbus_code;
 }
 if (ret_fmt != ((void*)0))
  *ret_fmt = ov7670_formats + index;



 fmt->field = V4L2_FIELD_NONE;





 if (info->min_width || info->min_height)
  for (i = 0; i < n_win_sizes; i++) {
   wsize = info->devtype->win_sizes + i;

   if (wsize->width < info->min_width ||
    wsize->height < info->min_height) {
    win_sizes_limit = i;
    break;
   }
  }




 for (wsize = info->devtype->win_sizes;
      wsize < info->devtype->win_sizes + win_sizes_limit; wsize++)
  if (fmt->width >= wsize->width && fmt->height >= wsize->height)
   break;
 if (wsize >= info->devtype->win_sizes + win_sizes_limit)
  wsize--;
 if (ret_wsize != ((void*)0))
  *ret_wsize = wsize;



 fmt->width = wsize->width;
 fmt->height = wsize->height;
 fmt->colorspace = ov7670_formats[index].colorspace;

 info->format = *fmt;

 return 0;
}
