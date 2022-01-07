
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int product; int dev; } ;
struct module {int dummy; } ;
struct media_device {int dev; } ;


 int ENOMEM ;
 struct media_device* ERR_PTR (int ) ;
 struct media_device* __media_device_get (int *,char const*,struct module*) ;
 int __media_device_usb_init (struct media_device*,struct usb_device*,int ,char const*) ;
 int media_device_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct media_device *media_device_usb_allocate(struct usb_device *udev,
            const char *module_name,
            struct module *owner)
{
 struct media_device *mdev;

 mutex_lock(&media_device_lock);
 mdev = __media_device_get(&udev->dev, module_name, owner);
 if (!mdev) {
  mutex_unlock(&media_device_lock);
  return ERR_PTR(-ENOMEM);
 }


 if (!mdev->dev)
  __media_device_usb_init(mdev, udev, udev->product,
     module_name);
 mutex_unlock(&media_device_lock);
 return mdev;
}
