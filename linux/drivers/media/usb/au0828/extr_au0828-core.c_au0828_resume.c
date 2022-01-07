
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct au0828_dev {int dummy; } ;


 int REG_600 ;
 int au0828_dvb_resume (struct au0828_dev*) ;
 int au0828_gpio_setup (struct au0828_dev*) ;
 int au0828_rc_resume (struct au0828_dev*) ;
 int au0828_v4l2_resume (struct au0828_dev*) ;
 int au0828_write (struct au0828_dev*,int ,int) ;
 int pr_info (char*) ;
 struct au0828_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int au0828_resume(struct usb_interface *interface)
{
 struct au0828_dev *dev = usb_get_intfdata(interface);
 if (!dev)
  return 0;

 pr_info("Resume\n");


 au0828_write(dev, REG_600, 1 << 4);


 au0828_gpio_setup(dev);

 au0828_rc_resume(dev);
 au0828_v4l2_resume(dev);
 au0828_dvb_resume(dev);



 return 0;
}
