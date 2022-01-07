
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdpvr_video_info {int fps; int height; int width; int valid; } ;
struct TYPE_2__ {int video_input; } ;
struct hdpvr_device {scalar_t__ status; int v4l2_dev; int worker; int udev; TYPE_1__ options; } ;


 int CTRL_START_STREAMING_VALUE ;
 int EAGAIN ;
 int INIT_WORK (int *,int ) ;
 int MSG_BUFFER ;
 int MSG_INFO ;
 scalar_t__ STATUS_IDLE ;
 scalar_t__ STATUS_STREAMING ;
 int get_video_info (struct hdpvr_device*,struct hdpvr_video_info*) ;
 int hdpvr_config_call (struct hdpvr_device*,int ,int) ;
 int hdpvr_debug ;
 int hdpvr_transmit_buffers ;
 int msleep (int) ;
 int schedule_work (int *) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;
 int v4l2_dbg (int ,int ,int *,char*,...) ;

__attribute__((used)) static int hdpvr_start_streaming(struct hdpvr_device *dev)
{
 int ret;
 struct hdpvr_video_info vidinf;

 if (dev->status == STATUS_STREAMING)
  return 0;
 if (dev->status != STATUS_IDLE)
  return -EAGAIN;

 ret = get_video_info(dev, &vidinf);
 if (ret < 0)
  return ret;

 if (!vidinf.valid) {
  msleep(250);
  v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
    "no video signal at input %d\n", dev->options.video_input);
  return -EAGAIN;
 }

 v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
   "video signal: %dx%d@%dhz\n", vidinf.width,
   vidinf.height, vidinf.fps);


 ret = usb_control_msg(dev->udev,
   usb_sndctrlpipe(dev->udev, 0),
   0xb8, 0x38, 0x1, 0, ((void*)0), 0, 8000);
 v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
   "encoder start control request returned %d\n", ret);
 if (ret < 0)
  return ret;

 ret = hdpvr_config_call(dev, CTRL_START_STREAMING_VALUE, 0x00);
 if (ret)
  return ret;

 dev->status = STATUS_STREAMING;

 INIT_WORK(&dev->worker, hdpvr_transmit_buffers);
 schedule_work(&dev->worker);

 v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
   "streaming started\n");

 return 0;
}
