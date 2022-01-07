
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int width; int height; int colorspace; int field; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ MEDIA_BUS_FMT_FIXED ;
 int SAA717X_NTSC_HEIGHT ;
 int SAA717X_NTSC_WIDTH ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int debug ;
 int saa717x_write (struct v4l2_subdev*,int,int ) ;
 int set_h_prescale (struct v4l2_subdev*,int,int) ;
 int set_v_scale (struct v4l2_subdev*,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int saa717x_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *fmt = &format->format;
 int prescale, h_scale, v_scale;

 v4l2_dbg(1, debug, sd, "decoder set size\n");

 if (format->pad || fmt->code != MEDIA_BUS_FMT_FIXED)
  return -EINVAL;


 if (fmt->width < 1 || fmt->width > 1440)
  return -EINVAL;
 if (fmt->height < 1 || fmt->height > 960)
  return -EINVAL;

 fmt->field = V4L2_FIELD_INTERLACED;
 fmt->colorspace = V4L2_COLORSPACE_SMPTE170M;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY)
  return 0;



 prescale = SAA717X_NTSC_WIDTH / fmt->width;
 if (prescale == 0)
  prescale = 1;
 h_scale = 1024 * SAA717X_NTSC_WIDTH / prescale / fmt->width;

 v_scale = 512 * 2 * SAA717X_NTSC_HEIGHT / fmt->height;


 set_h_prescale(sd, 0, prescale);
 set_h_prescale(sd, 1, prescale);



 saa717x_write(sd, 0x6C, (u8)(h_scale & 0xFF));
 saa717x_write(sd, 0x6D, (u8)((h_scale >> 8) & 0xFF));

 saa717x_write(sd, 0xAC, (u8)(h_scale & 0xFF));
 saa717x_write(sd, 0xAD, (u8)((h_scale >> 8) & 0xFF));


 set_v_scale(sd, 0, v_scale);
 set_v_scale(sd, 1, v_scale);




 saa717x_write(sd, 0x5C, (u8)(fmt->width & 0xFF));
 saa717x_write(sd, 0x5D, (u8)((fmt->width >> 8) & 0xFF));

 saa717x_write(sd, 0x9C, (u8)(fmt->width & 0xFF));
 saa717x_write(sd, 0x9D, (u8)((fmt->width >> 8) & 0xFF));



 saa717x_write(sd, 0x5E, (u8)(fmt->height & 0xFF));
 saa717x_write(sd, 0x5F, (u8)((fmt->height >> 8) & 0xFF));

 saa717x_write(sd, 0x9E, (u8)(fmt->height & 0xFF));
 saa717x_write(sd, 0x9F, (u8)((fmt->height >> 8) & 0xFF));
 return 0;
}
