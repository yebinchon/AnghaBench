
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void vub300_usb_bulk_msg_completion(struct urb *urb)
{
 complete((struct completion *)urb->context);
}
