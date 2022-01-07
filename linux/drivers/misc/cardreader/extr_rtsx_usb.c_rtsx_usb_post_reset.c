
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct rtsx_ucr {int dev_mutex; } ;


 int mutex_unlock (int *) ;
 scalar_t__ usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int rtsx_usb_post_reset(struct usb_interface *intf)
{
 struct rtsx_ucr *ucr = (struct rtsx_ucr *)usb_get_intfdata(intf);

 mutex_unlock(&ucr->dev_mutex);
 return 0;
}
