
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_8__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct TYPE_7__ {TYPE_4__* v4l2_dev; int name; } ;
struct TYPE_6__ {int audio_codec; } ;
struct hdpvr_device {int flags; int width; int height; int fw_ver; TYPE_4__ v4l2_dev; TYPE_2__ video_dev; int video_mode; void* video_bitrate_peak; void* video_bitrate; TYPE_1__ options; int cur_dv_timings; int cur_std; struct v4l2_ctrl_handler hdl; } ;
struct device {int dummy; } ;


 size_t HDPVR_DEF_DV_TIMINGS_IDX ;
 int HDPVR_FLAG_AC3_CAP ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_MPEG_AUDIO_ENCODING ;
 int V4L2_CID_MPEG_STREAM_TYPE ;
 int V4L2_CID_MPEG_VIDEO_BITRATE ;
 int V4L2_CID_MPEG_VIDEO_BITRATE_MODE ;
 int V4L2_CID_MPEG_VIDEO_BITRATE_PEAK ;
 int V4L2_CID_MPEG_VIDEO_ENCODING ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_MPEG_AUDIO_ENCODING_AAC ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_TS ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC ;
 int V4L2_STD_525_60 ;
 int VFL_TYPE_GRABBER ;
 int hdpvr_ctrl_ops ;
 int * hdpvr_dv_timings ;
 TYPE_2__ hdpvr_video_template ;
 int strscpy (int ,char*,int) ;
 int v4l2_ctrl_cluster (int,int *) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int,int ) ;
 int v4l2_err (TYPE_4__*,char*) ;
 int video_register_device (TYPE_2__*,int ,int) ;
 int video_set_drvdata (TYPE_2__*,struct hdpvr_device*) ;

int hdpvr_register_videodev(struct hdpvr_device *dev, struct device *parent,
       int devnum)
{
 struct v4l2_ctrl_handler *hdl = &dev->hdl;
 bool ac3 = dev->flags & HDPVR_FLAG_AC3_CAP;
 int res;

 dev->cur_std = V4L2_STD_525_60;
 dev->width = 720;
 dev->height = 480;
 dev->cur_dv_timings = hdpvr_dv_timings[HDPVR_DEF_DV_TIMINGS_IDX];
 v4l2_ctrl_handler_init(hdl, 11);
 if (dev->fw_ver > 0x15) {
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0x0, 0xff, 1, 0x80);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_CONTRAST, 0x0, 0xff, 1, 0x40);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_SATURATION, 0x0, 0xff, 1, 0x40);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_HUE, 0x0, 0x1e, 1, 0xf);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_SHARPNESS, 0x0, 0xff, 1, 0x80);
 } else {
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0x0, 0xff, 1, 0x86);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_CONTRAST, 0x0, 0xff, 1, 0x80);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_SATURATION, 0x0, 0xff, 1, 0x80);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_HUE, 0x0, 0xff, 1, 0x80);
  v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
   V4L2_CID_SHARPNESS, 0x0, 0xff, 1, 0x80);
 }

 v4l2_ctrl_new_std_menu(hdl, &hdpvr_ctrl_ops,
  V4L2_CID_MPEG_STREAM_TYPE,
  V4L2_MPEG_STREAM_TYPE_MPEG2_TS,
  0x1, V4L2_MPEG_STREAM_TYPE_MPEG2_TS);
 v4l2_ctrl_new_std_menu(hdl, &hdpvr_ctrl_ops,
  V4L2_CID_MPEG_AUDIO_ENCODING,
  ac3 ? V4L2_MPEG_AUDIO_ENCODING_AC3 : V4L2_MPEG_AUDIO_ENCODING_AAC,
  0x7, ac3 ? dev->options.audio_codec : V4L2_MPEG_AUDIO_ENCODING_AAC);
 v4l2_ctrl_new_std_menu(hdl, &hdpvr_ctrl_ops,
  V4L2_CID_MPEG_VIDEO_ENCODING,
  V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, 0x3,
  V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC);

 dev->video_mode = v4l2_ctrl_new_std_menu(hdl, &hdpvr_ctrl_ops,
  V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
  V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 0,
  V4L2_MPEG_VIDEO_BITRATE_MODE_CBR);

 dev->video_bitrate = v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
  V4L2_CID_MPEG_VIDEO_BITRATE,
  1000000, 13500000, 100000, 6500000);
 dev->video_bitrate_peak = v4l2_ctrl_new_std(hdl, &hdpvr_ctrl_ops,
  V4L2_CID_MPEG_VIDEO_BITRATE_PEAK,
  1100000, 20200000, 100000, 9000000);
 dev->v4l2_dev.ctrl_handler = hdl;
 if (hdl->error) {
  res = hdl->error;
  v4l2_err(&dev->v4l2_dev, "Could not register controls\n");
  goto error;
 }
 v4l2_ctrl_cluster(3, &dev->video_mode);
 res = v4l2_ctrl_handler_setup(hdl);
 if (res < 0) {
  v4l2_err(&dev->v4l2_dev, "Could not setup controls\n");
  goto error;
 }


 dev->video_dev = hdpvr_video_template;
 strscpy(dev->video_dev.name, "Hauppauge HD PVR",
  sizeof(dev->video_dev.name));
 dev->video_dev.v4l2_dev = &dev->v4l2_dev;
 video_set_drvdata(&dev->video_dev, dev);

 res = video_register_device(&dev->video_dev, VFL_TYPE_GRABBER, devnum);
 if (res < 0) {
  v4l2_err(&dev->v4l2_dev, "video_device registration failed\n");
  goto error;
 }

 return 0;
error:
 v4l2_ctrl_handler_free(hdl);
 return res;
}
