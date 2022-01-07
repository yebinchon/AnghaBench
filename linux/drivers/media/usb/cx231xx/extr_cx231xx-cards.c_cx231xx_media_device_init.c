
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct media_device {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct cx231xx {struct media_device* media_dev; TYPE_1__ board; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct media_device* kzalloc (int,int ) ;
 int media_device_usb_init (struct media_device*,struct usb_device*,int ) ;

__attribute__((used)) static int cx231xx_media_device_init(struct cx231xx *dev,
          struct usb_device *udev)
{
 return 0;
}
