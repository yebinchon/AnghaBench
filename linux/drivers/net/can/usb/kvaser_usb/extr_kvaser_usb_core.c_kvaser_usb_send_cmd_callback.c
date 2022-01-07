
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int transfer_buffer; struct net_device* context; } ;
struct net_device {int dummy; } ;


 int kfree (int ) ;
 int netdev_warn (struct net_device*,char*,int ) ;

__attribute__((used)) static void kvaser_usb_send_cmd_callback(struct urb *urb)
{
 struct net_device *netdev = urb->context;

 kfree(urb->transfer_buffer);

 if (urb->status)
  netdev_warn(netdev, "urb status received: %d\n", urb->status);
}
