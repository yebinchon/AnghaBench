
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int streaming; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int call_all (struct usb_usbvision*,int ,int ,int) ;
 int s_stream ;
 int stream_on ;
 int video ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv, enum v4l2_buf_type i)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 usbvision->streaming = stream_on;
 call_all(usbvision, video, s_stream, 1);

 return 0;
}
