
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct ems_usb {int free_slots; TYPE_1__ can; struct urb* intr_urb; scalar_t__* intr_in_buffer; int udev; int rx_submitted; struct net_device* netdev; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int CONTR_BUS_ERROR ;
 int CONTR_CAN_MESSAGE ;
 int CONTR_CAN_STATE ;
 int CONTR_CONT_ON ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INTR_IN_BUFFER_SIZE ;
 int MAX_RX_URBS ;
 int RX_BUFFER_SIZE ;
 int SJA1000_MOD_NORMAL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int ems_usb_control_cmd (struct ems_usb*,int) ;
 int ems_usb_read_bulk_callback ;
 int ems_usb_read_interrupt_callback ;
 int ems_usb_write_mode (struct ems_usb*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*,...) ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct ems_usb*) ;
 int usb_fill_int_urb (struct urb*,int ,int ,scalar_t__*,int ,int ,struct ems_usb*,int) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int ems_usb_start(struct ems_usb *dev)
{
 struct net_device *netdev = dev->netdev;
 int err, i;

 dev->intr_in_buffer[0] = 0;
 dev->free_slots = 50;

 for (i = 0; i < MAX_RX_URBS; i++) {
  struct urb *urb = ((void*)0);
  u8 *buf = ((void*)0);


  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   err = -ENOMEM;
   break;
  }

  buf = usb_alloc_coherent(dev->udev, RX_BUFFER_SIZE, GFP_KERNEL,
      &urb->transfer_dma);
  if (!buf) {
   netdev_err(netdev, "No memory left for USB buffer\n");
   usb_free_urb(urb);
   err = -ENOMEM;
   break;
  }

  usb_fill_bulk_urb(urb, dev->udev, usb_rcvbulkpipe(dev->udev, 2),
      buf, RX_BUFFER_SIZE,
      ems_usb_read_bulk_callback, dev);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  usb_anchor_urb(urb, &dev->rx_submitted);

  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err) {
   usb_unanchor_urb(urb);
   usb_free_coherent(dev->udev, RX_BUFFER_SIZE, buf,
       urb->transfer_dma);
   usb_free_urb(urb);
   break;
  }


  usb_free_urb(urb);
 }


 if (i == 0) {
  netdev_warn(netdev, "couldn't setup read URBs\n");
  return err;
 }


 if (i < MAX_RX_URBS)
  netdev_warn(netdev, "rx performance may be slow\n");


 usb_fill_int_urb(dev->intr_urb, dev->udev,
    usb_rcvintpipe(dev->udev, 1),
    dev->intr_in_buffer,
    INTR_IN_BUFFER_SIZE,
    ems_usb_read_interrupt_callback, dev, 1);

 err = usb_submit_urb(dev->intr_urb, GFP_KERNEL);
 if (err) {
  netdev_warn(netdev, "intr URB submit failed: %d\n", err);

  return err;
 }


 err = ems_usb_control_cmd(dev, CONTR_CAN_MESSAGE | CONTR_CONT_ON);
 if (err)
  goto failed;


 err = ems_usb_control_cmd(dev, CONTR_CAN_STATE | CONTR_CONT_ON);
 if (err)
  goto failed;


 err = ems_usb_control_cmd(dev, CONTR_BUS_ERROR | CONTR_CONT_ON);
 if (err)
  goto failed;

 err = ems_usb_write_mode(dev, SJA1000_MOD_NORMAL);
 if (err)
  goto failed;

 dev->can.state = CAN_STATE_ERROR_ACTIVE;

 return 0;

failed:
 netdev_warn(netdev, "couldn't submit control: %d\n", err);

 return err;
}
