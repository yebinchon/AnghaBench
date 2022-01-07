
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; int transfer_dma; } ;
struct ucan_priv {int rx_urbs; int in_ep_size; int in_ep_addr; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UCAN_MAX_RX_URBS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int memset (struct urb**,int ,int) ;
 int ucan_cleanup_rx_urbs (struct ucan_priv*,struct urb**) ;
 int ucan_read_bulk_callback ;
 void* usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,void*,int ,int ,struct ucan_priv*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static int ucan_prepare_and_anchor_rx_urbs(struct ucan_priv *up,
        struct urb **urbs)
{
 int i;

 memset(urbs, 0, sizeof(*urbs) * UCAN_MAX_RX_URBS);

 for (i = 0; i < UCAN_MAX_RX_URBS; i++) {
  void *buf;

  urbs[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!urbs[i])
   goto err;

  buf = usb_alloc_coherent(up->udev,
      up->in_ep_size,
      GFP_KERNEL, &urbs[i]->transfer_dma);
  if (!buf) {

   usb_free_urb(urbs[i]);
   urbs[i] = ((void*)0);
   goto err;
  }

  usb_fill_bulk_urb(urbs[i], up->udev,
      usb_rcvbulkpipe(up->udev,
        up->in_ep_addr),
      buf,
      up->in_ep_size,
      ucan_read_bulk_callback,
      up);

  urbs[i]->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

  usb_anchor_urb(urbs[i], &up->rx_urbs);
 }
 return 0;

err:

 ucan_cleanup_rx_urbs(up, urbs);
 return -ENOMEM;
}
