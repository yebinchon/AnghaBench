
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_api_blocking_completion ;
 int usb_fill_control_urb (struct urb*,struct usb_device*,unsigned int,unsigned char*,void*,int,int ,int *) ;
 int usb_start_wait_urb (struct urb*,int,int*) ;

__attribute__((used)) static int kaweth_internal_control_msg(struct usb_device *usb_dev,
           unsigned int pipe,
           struct usb_ctrlrequest *cmd, void *data,
           int len, int timeout)
{
        struct urb *urb;
        int retv;
        int length = 0;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
        if (!urb)
                return -ENOMEM;

        usb_fill_control_urb(urb, usb_dev, pipe, (unsigned char*)cmd, data,
    len, usb_api_blocking_completion, ((void*)0));

        retv = usb_start_wait_urb(urb, timeout, &length);
        if (retv < 0) {
                return retv;
 }
        else {
                return length;
 }
}
