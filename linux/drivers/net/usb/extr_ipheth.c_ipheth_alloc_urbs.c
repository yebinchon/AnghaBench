
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int transfer_dma; } ;
struct ipheth_device {int udev; int * rx_buf; int * tx_buf; struct urb* rx_urb; struct urb* tx_urb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IPHETH_BUF_SIZE ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static int ipheth_alloc_urbs(struct ipheth_device *iphone)
{
 struct urb *tx_urb = ((void*)0);
 struct urb *rx_urb = ((void*)0);
 u8 *tx_buf = ((void*)0);
 u8 *rx_buf = ((void*)0);

 tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (tx_urb == ((void*)0))
  goto error_nomem;

 rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (rx_urb == ((void*)0))
  goto free_tx_urb;

 tx_buf = usb_alloc_coherent(iphone->udev, IPHETH_BUF_SIZE,
        GFP_KERNEL, &tx_urb->transfer_dma);
 if (tx_buf == ((void*)0))
  goto free_rx_urb;

 rx_buf = usb_alloc_coherent(iphone->udev, IPHETH_BUF_SIZE,
        GFP_KERNEL, &rx_urb->transfer_dma);
 if (rx_buf == ((void*)0))
  goto free_tx_buf;


 iphone->tx_urb = tx_urb;
 iphone->rx_urb = rx_urb;
 iphone->tx_buf = tx_buf;
 iphone->rx_buf = rx_buf;
 return 0;

free_tx_buf:
 usb_free_coherent(iphone->udev, IPHETH_BUF_SIZE, tx_buf,
     tx_urb->transfer_dma);
free_rx_urb:
 usb_free_urb(rx_urb);
free_tx_urb:
 usb_free_urb(tx_urb);
error_nomem:
 return -ENOMEM;
}
