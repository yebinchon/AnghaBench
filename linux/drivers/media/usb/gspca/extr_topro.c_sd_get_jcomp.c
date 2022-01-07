
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_jpegcompression {int jpeg_markers; int quality; } ;
struct sd {scalar_t__ sensor; int jpegqual; } ;
struct gspca_dev {int dummy; } ;


 int ENOTTY ;
 scalar_t__ SENSOR_SOI763A ;
 int V4L2_JPEG_MARKER_DHT ;
 int V4L2_JPEG_MARKER_DQT ;
 int memset (struct v4l2_jpegcompression*,int ,int) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static int sd_get_jcomp(struct gspca_dev *gspca_dev,
   struct v4l2_jpegcompression *jcomp)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor != SENSOR_SOI763A)
  return -ENOTTY;
 memset(jcomp, 0, sizeof *jcomp);
 jcomp->quality = v4l2_ctrl_g_ctrl(sd->jpegqual);
 jcomp->jpeg_markers = V4L2_JPEG_MARKER_DHT
   | V4L2_JPEG_MARKER_DQT;
 return 0;
}
