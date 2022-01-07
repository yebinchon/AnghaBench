
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_interface {int dummy; } ;
struct dln2_dev {int * rx_buf; int ep_in; int usb_dev; int * rx_urb; } ;


 int DLN2_MAX_URBS ;
 int DLN2_RX_BUF_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dln2_rx ;
 int kmalloc (int const,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int const,int ,struct dln2_dev*) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static int dln2_setup_rx_urbs(struct dln2_dev *dln2,
         struct usb_host_interface *hostif)
{
 int i;
 const int rx_max_size = DLN2_RX_BUF_SIZE;

 for (i = 0; i < DLN2_MAX_URBS; i++) {
  dln2->rx_buf[i] = kmalloc(rx_max_size, GFP_KERNEL);
  if (!dln2->rx_buf[i])
   return -ENOMEM;

  dln2->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!dln2->rx_urb[i])
   return -ENOMEM;

  usb_fill_bulk_urb(dln2->rx_urb[i], dln2->usb_dev,
      usb_rcvbulkpipe(dln2->usb_dev, dln2->ep_in),
      dln2->rx_buf[i], rx_max_size, dln2_rx, dln2);
 }

 return 0;
}
