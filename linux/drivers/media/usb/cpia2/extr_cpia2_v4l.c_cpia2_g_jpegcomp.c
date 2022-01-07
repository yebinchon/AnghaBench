
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_jpegcompression {int quality; int jpeg_markers; scalar_t__ APP_len; scalar_t__ COM_len; int COM_data; int APP_data; int APPn; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int inhibit_htables; } ;
struct TYPE_4__ {TYPE_1__ compression; } ;
struct camera_data {scalar_t__ APP_len; scalar_t__ COM_len; int COM_data; int APP_data; int APPn; TYPE_2__ params; } ;


 int DBG (char*,scalar_t__,scalar_t__) ;
 int JPEG_MARKER_COM ;
 int V4L2_JPEG_MARKER_APP ;
 int V4L2_JPEG_MARKER_DHT ;
 int V4L2_JPEG_MARKER_DQT ;
 int V4L2_JPEG_MARKER_DRI ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct v4l2_jpegcompression*,int ,int) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_g_jpegcomp(struct file *file, void *fh, struct v4l2_jpegcompression *parms)
{
 struct camera_data *cam = video_drvdata(file);

 memset(parms, 0, sizeof(*parms));

 parms->quality = 80;

 parms->jpeg_markers = V4L2_JPEG_MARKER_DQT | V4L2_JPEG_MARKER_DRI;
 if(!cam->params.compression.inhibit_htables) {
  parms->jpeg_markers |= V4L2_JPEG_MARKER_DHT;
 }

 parms->APPn = cam->APPn;
 parms->APP_len = cam->APP_len;
 if(cam->APP_len > 0) {
  memcpy(parms->APP_data, cam->APP_data, cam->APP_len);
  parms->jpeg_markers |= V4L2_JPEG_MARKER_APP;
 }

 parms->COM_len = cam->COM_len;
 if(cam->COM_len > 0) {
  memcpy(parms->COM_data, cam->COM_data, cam->COM_len);
  parms->jpeg_markers |= JPEG_MARKER_COM;
 }

 DBG("G_JPEGCOMP APP_len:%d COM_len:%d\n",
     parms->APP_len, parms->COM_len);

 return 0;
}
