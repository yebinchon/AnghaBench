
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bRequestType; } ;
struct kaweth_device {int dev; int net; } ;
typedef void* __u8 ;
typedef int __u16 ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 void* cpu_to_le16 (int ) ;
 scalar_t__ in_interrupt () ;
 int kaweth_internal_control_msg (int ,unsigned int,struct usb_ctrlrequest*,void*,int ,int) ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 int netdev_dbg (int ,char*) ;

__attribute__((used)) static int kaweth_control(struct kaweth_device *kaweth,
     unsigned int pipe,
     __u8 request,
     __u8 requesttype,
     __u16 value,
     __u16 index,
     void *data,
     __u16 size,
     int timeout)
{
 struct usb_ctrlrequest *dr;
 int retval;

 if(in_interrupt()) {
  netdev_dbg(kaweth->net, "in_interrupt()\n");
  return -EBUSY;
 }

 dr = kmalloc(sizeof(struct usb_ctrlrequest), GFP_ATOMIC);
 if (!dr)
  return -ENOMEM;

 dr->bRequestType = requesttype;
 dr->bRequest = request;
 dr->wValue = cpu_to_le16(value);
 dr->wIndex = cpu_to_le16(index);
 dr->wLength = cpu_to_le16(size);

 retval = kaweth_internal_control_msg(kaweth->dev,
          pipe,
          dr,
          data,
          size,
          timeout);

 kfree(dr);
 return retval;
}
