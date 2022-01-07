
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct kaweth_device {int opened; TYPE_3__* intf; int rx_urb; TYPE_1__* irq_urb; int intbufferhandle; int intbuffer; int dev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int transfer_flags; int transfer_dma; } ;


 int EIO ;
 int GFP_KERNEL ;
 int INTBUFFERSIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int *,char*) ;
 int int_callback ;
 int kaweth_async_set_rx_mode (struct kaweth_device*) ;
 int kaweth_resubmit_rx_urb (struct kaweth_device*,int ) ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int usb_autopm_get_interface (TYPE_3__*) ;
 int usb_autopm_put_interface (TYPE_3__*) ;
 int usb_fill_int_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct kaweth_device*,int) ;
 int usb_kill_urb (int ) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int kaweth_open(struct net_device *net)
{
 struct kaweth_device *kaweth = netdev_priv(net);
 int res;

 res = usb_autopm_get_interface(kaweth->intf);
 if (res) {
  dev_err(&kaweth->intf->dev, "Interface cannot be resumed.\n");
  return -EIO;
 }
 res = kaweth_resubmit_rx_urb(kaweth, GFP_KERNEL);
 if (res)
  goto err_out;

 usb_fill_int_urb(
  kaweth->irq_urb,
  kaweth->dev,
  usb_rcvintpipe(kaweth->dev, 3),
  kaweth->intbuffer,
  INTBUFFERSIZE,
  int_callback,
  kaweth,
  250);
 kaweth->irq_urb->transfer_dma = kaweth->intbufferhandle;
 kaweth->irq_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 res = usb_submit_urb(kaweth->irq_urb, GFP_KERNEL);
 if (res) {
  usb_kill_urb(kaweth->rx_urb);
  goto err_out;
 }
 kaweth->opened = 1;

 netif_start_queue(net);

 kaweth_async_set_rx_mode(kaweth);
 return 0;

err_out:
 usb_autopm_put_interface(kaweth->intf);
 return -EIO;
}
