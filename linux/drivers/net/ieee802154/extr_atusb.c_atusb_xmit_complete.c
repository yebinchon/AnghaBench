
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static void atusb_xmit_complete(struct urb *urb)
{
 dev_dbg(&urb->dev->dev, "atusb_xmit urb completed");
}
