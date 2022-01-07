
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int usb_timed_out; int command_res_urb; int command_out_urb; int sg_request; } ;
struct timer_list {int dummy; } ;


 struct vub300_mmc_host* from_timer (int ,struct timer_list*,int ) ;
 int sg_transfer_timer ;
 int usb_sg_cancel (int *) ;
 int usb_unlink_urb (int ) ;
 struct vub300_mmc_host* vub300 ;

__attribute__((used)) static void vub300_sg_timed_out(struct timer_list *t)
{
 struct vub300_mmc_host *vub300 = from_timer(vub300, t,
          sg_transfer_timer);
 vub300->usb_timed_out = 1;
 usb_sg_cancel(&vub300->sg_request);
 usb_unlink_urb(vub300->command_out_urb);
 usb_unlink_urb(vub300->command_res_urb);
}
