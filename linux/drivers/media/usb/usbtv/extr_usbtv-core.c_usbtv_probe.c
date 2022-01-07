
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbtv {int iso_size; int udev; int v4l2_dev; struct device* dev; } ;
struct device {int dummy; } ;
struct usb_interface {int num_altsetting; TYPE_2__* altsetting; struct device dev; } ;
struct usb_host_endpoint {int desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct TYPE_4__ {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (struct device*,char*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usbtv*) ;
 struct usbtv* kzalloc (int,int ) ;
 int usb_endpoint_maxp (int *) ;
 int usb_endpoint_maxp_mult (int *) ;
 int usb_get_dev (int ) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct usbtv*) ;
 int usbtv_audio_init (struct usbtv*) ;
 int usbtv_video_free (struct usbtv*) ;
 int usbtv_video_init (struct usbtv*) ;
 int v4l2_device_get (int *) ;

__attribute__((used)) static int usbtv_probe(struct usb_interface *intf,
 const struct usb_device_id *id)
{
 int ret;
 int size;
 struct device *dev = &intf->dev;
 struct usbtv *usbtv;
 struct usb_host_endpoint *ep;


 if (intf->num_altsetting != 2)
  return -ENODEV;
 if (intf->altsetting[1].desc.bNumEndpoints != 4)
  return -ENODEV;

 ep = &intf->altsetting[1].endpoint[0];



 size = usb_endpoint_maxp(&ep->desc);
 size = size * usb_endpoint_maxp_mult(&ep->desc);


 usbtv = kzalloc(sizeof(struct usbtv), GFP_KERNEL);
 if (usbtv == ((void*)0))
  return -ENOMEM;
 usbtv->dev = dev;
 usbtv->udev = usb_get_dev(interface_to_usbdev(intf));

 usbtv->iso_size = size;

 usb_set_intfdata(intf, usbtv);

 ret = usbtv_video_init(usbtv);
 if (ret < 0)
  goto usbtv_video_fail;

 ret = usbtv_audio_init(usbtv);
 if (ret < 0)
  goto usbtv_audio_fail;


 v4l2_device_get(&usbtv->v4l2_dev);

 dev_info(dev, "Fushicai USBTV007 Audio-Video Grabber\n");
 return 0;

usbtv_audio_fail:

 usb_get_dev(usbtv->udev);
 usbtv_video_free(usbtv);

usbtv_video_fail:
 usb_set_intfdata(intf, ((void*)0));
 usb_put_dev(usbtv->udev);
 kfree(usbtv);

 return ret;
}
