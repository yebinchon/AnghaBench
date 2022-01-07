
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct usb_usbvision {scalar_t__ streaming; int * cur_frame; } ;
struct file {int dummy; } ;


 scalar_t__ stream_on ;
 int usbvision_empty_framequeues (struct usb_usbvision*) ;
 int usbvision_frames_free (struct usb_usbvision*) ;
 int usbvision_set_output (struct usb_usbvision*,int ,int ) ;
 int usbvision_stream_interrupt (struct usb_usbvision*) ;
 struct usb_usbvision* video_drvdata (struct file*) ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
          struct v4l2_format *vf)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 int ret;

 ret = vidioc_try_fmt_vid_cap(file, priv, vf);
 if (ret)
  return ret;


 if (usbvision->streaming == stream_on) {
  ret = usbvision_stream_interrupt(usbvision);
  if (ret)
   return ret;
 }
 usbvision_frames_free(usbvision);
 usbvision_empty_framequeues(usbvision);

 usbvision->cur_frame = ((void*)0);


 usbvision_set_output(usbvision, vf->fmt.pix.width, vf->fmt.pix.height);

 return 0;
}
