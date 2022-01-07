
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct au0828_dev {int dummy; } ;
typedef int pm_message_t ;


 int au0828_dvb_suspend (struct au0828_dev*) ;
 int au0828_rc_suspend (struct au0828_dev*) ;
 int au0828_v4l2_suspend (struct au0828_dev*) ;
 int pr_info (char*) ;
 struct au0828_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int au0828_suspend(struct usb_interface *interface,
    pm_message_t message)
{
 struct au0828_dev *dev = usb_get_intfdata(interface);

 if (!dev)
  return 0;

 pr_info("Suspend\n");

 au0828_rc_suspend(dev);
 au0828_v4l2_suspend(dev);
 au0828_dvb_suspend(dev);



 return 0;
}
