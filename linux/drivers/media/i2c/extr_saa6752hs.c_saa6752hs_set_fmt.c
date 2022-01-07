
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ code; int width; int height; int colorspace; int field; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct saa6752hs_state {int video_format; } ;


 int EINVAL ;
 scalar_t__ MEDIA_BUS_FMT_FIXED ;
 int SAA6752HS_VF_1_2_D1 ;
 int SAA6752HS_VF_2_3_D1 ;
 int SAA6752HS_VF_D1 ;
 int SAA6752HS_VF_SIF ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int abs (int) ;
 struct saa6752hs_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa6752hs_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *f = &format->format;
 struct saa6752hs_state *h = to_state(sd);
 int dist_352, dist_480, dist_720;

 if (format->pad)
  return -EINVAL;

 f->code = MEDIA_BUS_FMT_FIXED;

 dist_352 = abs(f->width - 352);
 dist_480 = abs(f->width - 480);
 dist_720 = abs(f->width - 720);
 if (dist_720 < dist_480) {
  f->width = 720;
  f->height = 576;
 } else if (dist_480 < dist_352) {
  f->width = 480;
  f->height = 576;
 } else {
  f->width = 352;
  if (abs(f->height - 576) < abs(f->height - 288))
   f->height = 576;
  else
   f->height = 288;
 }
 f->field = V4L2_FIELD_INTERLACED;
 f->colorspace = V4L2_COLORSPACE_SMPTE170M;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  cfg->try_fmt = *f;
  return 0;
 }
 if (f->code != MEDIA_BUS_FMT_FIXED)
  return -EINVAL;

 if (f->width == 720)
  h->video_format = SAA6752HS_VF_D1;
 else if (f->width == 480)
  h->video_format = SAA6752HS_VF_2_3_D1;
 else if (f->height == 576)
  h->video_format = SAA6752HS_VF_1_2_D1;
 else
  h->video_format = SAA6752HS_VF_SIF;
 return 0;
}
