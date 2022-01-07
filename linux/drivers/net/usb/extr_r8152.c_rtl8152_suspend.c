
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct r8152 {int control; } ;
typedef int pm_message_t ;


 scalar_t__ PMSG_IS_AUTO (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8152_runtime_suspend (struct r8152*) ;
 int rtl8152_system_suspend (struct r8152*) ;
 struct r8152* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int rtl8152_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct r8152 *tp = usb_get_intfdata(intf);
 int ret;

 mutex_lock(&tp->control);

 if (PMSG_IS_AUTO(message))
  ret = rtl8152_runtime_suspend(tp);
 else
  ret = rtl8152_system_suspend(tp);

 mutex_unlock(&tp->control);

 return ret;
}
