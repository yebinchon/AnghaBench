
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8152 {int flags; TYPE_1__* udev; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int RTL8152_UNPLUG ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static void rtl_set_unplug(struct r8152 *tp)
{
 if (tp->udev->state == USB_STATE_NOTATTACHED) {
  set_bit(RTL8152_UNPLUG, &tp->flags);
  smp_mb__after_atomic();
 }
}
