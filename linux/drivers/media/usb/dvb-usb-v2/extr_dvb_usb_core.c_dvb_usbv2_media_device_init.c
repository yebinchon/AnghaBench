
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct media_device {int dummy; } ;
struct dvb_usb_device {struct usb_device* udev; int name; } ;
struct dvb_usb_adapter {int dvb_adap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 int dev_info (int *,char*) ;
 int dvb_register_media_controller (int *,struct media_device*) ;
 struct media_device* kzalloc (int,int ) ;
 int media_device_usb_init (struct media_device*,struct usb_device*,int ) ;

__attribute__((used)) static int dvb_usbv2_media_device_init(struct dvb_usb_adapter *adap)
{
 return 0;
}
