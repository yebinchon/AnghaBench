
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipheth_device {TYPE_1__* tx_urb; TYPE_1__* rx_urb; int tx_buf; int udev; int rx_buf; } ;
struct TYPE_2__ {int transfer_dma; } ;


 int IPHETH_BUF_SIZE ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static void ipheth_free_urbs(struct ipheth_device *iphone)
{
 usb_free_coherent(iphone->udev, IPHETH_BUF_SIZE, iphone->rx_buf,
     iphone->rx_urb->transfer_dma);
 usb_free_coherent(iphone->udev, IPHETH_BUF_SIZE, iphone->tx_buf,
     iphone->tx_urb->transfer_dma);
 usb_free_urb(iphone->rx_urb);
 usb_free_urb(iphone->tx_urb);
}
