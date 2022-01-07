
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int irqpoll_complete; scalar_t__ usb_transport_fail; } ;
struct urb {scalar_t__ status; scalar_t__ context; } ;


 int complete (int *) ;

__attribute__((used)) static void irqpoll_res_completed(struct urb *urb)
{
 struct vub300_mmc_host *vub300 = (struct vub300_mmc_host *)urb->context;
 if (urb->status)
  vub300->usb_transport_fail = urb->status;
 complete(&vub300->irqpoll_complete);
}
