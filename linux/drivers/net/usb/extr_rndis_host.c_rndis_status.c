
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct urb {int status; int actual_length; } ;


 int netdev_dbg (int ,char*,int ,int ) ;

void rndis_status(struct usbnet *dev, struct urb *urb)
{
 netdev_dbg(dev->net, "rndis status urb, len %d stat %d\n",
     urb->actual_length, urb->status);


}
