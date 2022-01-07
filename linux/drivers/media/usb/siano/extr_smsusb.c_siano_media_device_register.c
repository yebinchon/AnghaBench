
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct smsusb_device_t {struct usb_device* udev; } ;
struct sms_board {int name; } ;
typedef void media_device ;


 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int media_device_cleanup (void*) ;
 int media_device_register (void*) ;
 int media_device_usb_init (void*,struct usb_device*,int ) ;
 int pr_info (char*) ;
 struct sms_board* sms_get_board (int) ;

__attribute__((used)) static void *siano_media_device_register(struct smsusb_device_t *dev,
     int board_id)
{
 return ((void*)0);

}
