
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct r8152 {int control; int flags; } ;


 int SELECTIVE_SUSPEND ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8152_runtime_resume (struct r8152*) ;
 int rtl8152_system_resume (struct r8152*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct r8152* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int rtl8152_resume(struct usb_interface *intf)
{
 struct r8152 *tp = usb_get_intfdata(intf);
 int ret;

 mutex_lock(&tp->control);

 if (test_bit(SELECTIVE_SUSPEND, &tp->flags))
  ret = rtl8152_runtime_resume(tp);
 else
  ret = rtl8152_system_resume(tp);

 mutex_unlock(&tp->control);

 return ret;
}
