
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct peak_usb_device {int dummy; } ;
struct pcan_usb {struct peak_usb_device dev; } ;


 struct pcan_usb* from_timer (int ,struct timer_list*,int ) ;
 struct pcan_usb* pdev ;
 int peak_usb_restart_complete (struct peak_usb_device*) ;
 int restart_timer ;

__attribute__((used)) static void pcan_usb_restart(struct timer_list *t)
{
 struct pcan_usb *pdev = from_timer(pdev, t, restart_timer);
 struct peak_usb_device *dev = &pdev->dev;


 peak_usb_restart_complete(dev);
}
