
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int usb_timed_out; int command_res_urb; int command_out_urb; scalar_t__ usb_transport_fail; int irqpoll_complete; int inactivity_timer; } ;


 scalar_t__ HZ ;
 int __vub300_irqpoll_response (struct vub300_mmc_host*) ;
 int init_completion (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int msecs_to_jiffies (int) ;
 int send_irqpoll (struct vub300_mmc_host*) ;
 int usb_kill_urb (int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void __do_poll(struct vub300_mmc_host *vub300)
{

 unsigned long commretval;
 mod_timer(&vub300->inactivity_timer, jiffies + HZ);
 init_completion(&vub300->irqpoll_complete);
 send_irqpoll(vub300);
 commretval = wait_for_completion_timeout(&vub300->irqpoll_complete,
       msecs_to_jiffies(500));
 if (vub300->usb_transport_fail) {

 } else if (commretval == 0) {
  vub300->usb_timed_out = 1;
  usb_kill_urb(vub300->command_out_urb);
  usb_kill_urb(vub300->command_res_urb);
 } else {
  __vub300_irqpoll_response(vub300);
 }
}
