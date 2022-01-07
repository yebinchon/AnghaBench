
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bRequest; } ;
struct igorplugusb {int dev; TYPE_2__* urb; TYPE_1__ request; } ;
struct TYPE_4__ {scalar_t__ transfer_flags; } ;


 int GFP_ATOMIC ;
 int dev_err (int ,char*,int) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static void igorplugusb_cmd(struct igorplugusb *ir, int cmd)
{
 int ret;

 ir->request.bRequest = cmd;
 ir->urb->transfer_flags = 0;
 ret = usb_submit_urb(ir->urb, GFP_ATOMIC);
 if (ret)
  dev_err(ir->dev, "submit urb failed: %d", ret);
}
