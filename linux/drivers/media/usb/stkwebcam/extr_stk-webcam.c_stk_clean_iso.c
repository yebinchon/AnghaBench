
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct stk_camera {TYPE_1__* isobufs; int urbs_used; } ;
struct TYPE_2__ {struct TYPE_2__* data; struct urb* urb; } ;


 int MAX_ISO_BUFS ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ is_present (struct stk_camera*) ;
 int kfree (TYPE_1__*) ;
 int unset_memallocd (struct stk_camera*) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void stk_clean_iso(struct stk_camera *dev)
{
 int i;

 if (dev == ((void*)0) || dev->isobufs == ((void*)0))
  return;

 for (i = 0; i < MAX_ISO_BUFS; i++) {
  struct urb *urb;

  urb = dev->isobufs[i].urb;
  if (urb) {
   if (atomic_read(&dev->urbs_used) && is_present(dev))
    usb_kill_urb(urb);
   usb_free_urb(urb);
  }
  kfree(dev->isobufs[i].data);
 }
 kfree(dev->isobufs);
 dev->isobufs = ((void*)0);
 unset_memallocd(dev);
}
