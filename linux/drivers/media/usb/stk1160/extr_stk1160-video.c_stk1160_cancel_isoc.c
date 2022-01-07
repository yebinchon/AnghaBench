
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_bufs; int * urb; } ;
struct stk1160 {TYPE_1__ isoc_ctl; } ;


 int stk1160_dbg (char*,...) ;
 int usb_kill_urb (int ) ;

void stk1160_cancel_isoc(struct stk1160 *dev)
{
 int i, num_bufs = dev->isoc_ctl.num_bufs;





 if (!num_bufs)
  return;

 stk1160_dbg("killing %d urbs...\n", num_bufs);

 for (i = 0; i < num_bufs; i++) {






  usb_kill_urb(dev->isoc_ctl.urb[i]);
 }

 stk1160_dbg("all urbs killed\n");
}
