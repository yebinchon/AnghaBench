
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kaweth_device {int suspend_lowmem_ctrl; TYPE_3__* dev; TYPE_1__* intf; int lowmem_work; int irq_urb; } ;
typedef int gfp_t ;
struct TYPE_6__ {int devpath; TYPE_2__* bus; } ;
struct TYPE_5__ {int bus_name; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int HZ ;
 int dev_err (int *,char*,int ,int ,int) ;
 int schedule_delayed_work (int *,int) ;
 scalar_t__ unlikely (int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void kaweth_resubmit_int_urb(struct kaweth_device *kaweth, gfp_t mf)
{
 int status;

 status = usb_submit_urb (kaweth->irq_urb, mf);
 if (unlikely(status == -ENOMEM)) {
  kaweth->suspend_lowmem_ctrl = 1;
  schedule_delayed_work(&kaweth->lowmem_work, HZ/4);
 } else {
  kaweth->suspend_lowmem_ctrl = 0;
 }

 if (status)
  dev_err(&kaweth->intf->dev,
   "can't resubmit intr, %s-%s, status %d\n",
   kaweth->dev->bus->bus_name,
   kaweth->dev->devpath, status);
}
