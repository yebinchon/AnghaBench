
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {scalar_t__ streaming; int wait_stream; } ;


 int USBVISION_NUMSBUF ;
 int USBVISION_URB_FRAMES ;
 int msecs_to_jiffies (int) ;
 scalar_t__ stream_idle ;
 scalar_t__ stream_interrupt ;
 int wait_event_timeout (int ,int,int ) ;

int usbvision_stream_interrupt(struct usb_usbvision *usbvision)
{
 int ret = 0;



 usbvision->streaming = stream_interrupt;
 ret = wait_event_timeout(usbvision->wait_stream,
     (usbvision->streaming == stream_idle),
     msecs_to_jiffies(USBVISION_NUMSBUF*USBVISION_URB_FRAMES));
 return ret;
}
