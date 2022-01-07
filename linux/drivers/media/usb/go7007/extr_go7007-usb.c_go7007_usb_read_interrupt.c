
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_usb {int intr_urb; } ;
struct go7007 {int dev; struct go7007_usb* hpi_context; } ;


 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int go7007_usb_read_interrupt(struct go7007 *go)
{
 struct go7007_usb *usb = go->hpi_context;
 int r;

 r = usb_submit_urb(usb->intr_urb, GFP_KERNEL);
 if (r < 0) {
  dev_err(go->dev, "unable to submit interrupt urb: %d\n", r);
  return r;
 }
 return 0;
}
