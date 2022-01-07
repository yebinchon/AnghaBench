
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int mmc; int csw_urb; int data_urb; int cbw_urb; int int_urb; int lock; int flags; } ;
struct usb_interface {int dummy; } ;


 int DISCONNECTED ;
 int mmc_remove_host (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct ushc_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int ushc_clean_up (struct ushc_data*) ;

__attribute__((used)) static void ushc_disconnect(struct usb_interface *intf)
{
 struct ushc_data *ushc = usb_get_intfdata(intf);

 spin_lock_irq(&ushc->lock);
 set_bit(DISCONNECTED, &ushc->flags);
 spin_unlock_irq(&ushc->lock);

 usb_kill_urb(ushc->int_urb);
 usb_kill_urb(ushc->cbw_urb);
 usb_kill_urb(ushc->data_urb);
 usb_kill_urb(ushc->csw_urb);

 mmc_remove_host(ushc->mmc);

 ushc_clean_up(ushc);
}
