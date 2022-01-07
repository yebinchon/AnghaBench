
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct kaweth_device {int device_lock; int status; } ;
typedef int pm_message_t ;


 int KAWETH_STATUS_SUSPENDING ;
 int kaweth_kill_urbs (struct kaweth_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct kaweth_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int kaweth_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct kaweth_device *kaweth = usb_get_intfdata(intf);
 unsigned long flags;

 spin_lock_irqsave(&kaweth->device_lock, flags);
 kaweth->status |= KAWETH_STATUS_SUSPENDING;
 spin_unlock_irqrestore(&kaweth->device_lock, flags);

 kaweth_kill_urbs(kaweth);
 return 0;
}
