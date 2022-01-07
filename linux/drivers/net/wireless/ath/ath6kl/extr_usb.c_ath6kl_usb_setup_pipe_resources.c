
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bmAttributes; int wMaxPacketSize; int bEndpointAddress; int bInterval; } ;
struct ath6kl_usb_pipe {size_t logical_pipe_num; int flags; int ep_address; struct usb_endpoint_descriptor* ep_desc; int usb_pipe_handle; int max_packet_size; struct ath6kl_usb* ar_usb; } ;
struct ath6kl_usb {int udev; struct ath6kl_usb_pipe* pipes; struct usb_interface* interface; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int ATH6KL_DBG_USB ;
 scalar_t__ ATH6KL_USB_IS_BULK_EP (int ) ;
 scalar_t__ ATH6KL_USB_IS_DIR_IN (int ) ;
 scalar_t__ ATH6KL_USB_IS_INT_EP (int ) ;
 scalar_t__ ATH6KL_USB_IS_ISOC_EP (int ) ;
 int ATH6KL_USB_PIPE_FLAG_TX ;
 size_t ATH6KL_USB_PIPE_INVALID ;
 int ath6kl_dbg (int ,char*,...) ;
 int ath6kl_usb_alloc_pipe_resources (struct ath6kl_usb_pipe*,int) ;
 size_t ath6kl_usb_get_logical_pipe_num (struct ath6kl_usb*,int ,int*) ;
 int le16_to_cpu (int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_rcvisocpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_sndintpipe (int ,int ) ;
 int usb_sndisocpipe (int ,int ) ;

__attribute__((used)) static int ath6kl_usb_setup_pipe_resources(struct ath6kl_usb *ar_usb)
{
 struct usb_interface *interface = ar_usb->interface;
 struct usb_host_interface *iface_desc = interface->cur_altsetting;
 struct usb_endpoint_descriptor *endpoint;
 struct ath6kl_usb_pipe *pipe;
 int i, urbcount, status = 0;
 u8 pipe_num;

 ath6kl_dbg(ATH6KL_DBG_USB, "setting up USB Pipes using interface\n");


 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (ATH6KL_USB_IS_BULK_EP(endpoint->bmAttributes)) {
   ath6kl_dbg(ATH6KL_DBG_USB,
       "%s Bulk Ep:0x%2.2X maxpktsz:%d\n",
       ATH6KL_USB_IS_DIR_IN
       (endpoint->bEndpointAddress) ?
       "RX" : "TX", endpoint->bEndpointAddress,
       le16_to_cpu(endpoint->wMaxPacketSize));
  } else if (ATH6KL_USB_IS_INT_EP(endpoint->bmAttributes)) {
   ath6kl_dbg(ATH6KL_DBG_USB,
       "%s Int Ep:0x%2.2X maxpktsz:%d interval:%d\n",
       ATH6KL_USB_IS_DIR_IN
       (endpoint->bEndpointAddress) ?
       "RX" : "TX", endpoint->bEndpointAddress,
       le16_to_cpu(endpoint->wMaxPacketSize),
       endpoint->bInterval);
  } else if (ATH6KL_USB_IS_ISOC_EP(endpoint->bmAttributes)) {

   ath6kl_dbg(ATH6KL_DBG_USB,
       "%s ISOC Ep:0x%2.2X maxpktsz:%d interval:%d\n",
       ATH6KL_USB_IS_DIR_IN
       (endpoint->bEndpointAddress) ?
       "RX" : "TX", endpoint->bEndpointAddress,
       le16_to_cpu(endpoint->wMaxPacketSize),
       endpoint->bInterval);
  }
  urbcount = 0;

  pipe_num =
      ath6kl_usb_get_logical_pipe_num(ar_usb,
          endpoint->bEndpointAddress,
          &urbcount);
  if (pipe_num == ATH6KL_USB_PIPE_INVALID)
   continue;

  pipe = &ar_usb->pipes[pipe_num];
  if (pipe->ar_usb != ((void*)0)) {

   continue;
  }

  pipe->ar_usb = ar_usb;
  pipe->logical_pipe_num = pipe_num;
  pipe->ep_address = endpoint->bEndpointAddress;
  pipe->max_packet_size = le16_to_cpu(endpoint->wMaxPacketSize);

  if (ATH6KL_USB_IS_BULK_EP(endpoint->bmAttributes)) {
   if (ATH6KL_USB_IS_DIR_IN(pipe->ep_address)) {
    pipe->usb_pipe_handle =
        usb_rcvbulkpipe(ar_usb->udev,
          pipe->ep_address);
   } else {
    pipe->usb_pipe_handle =
        usb_sndbulkpipe(ar_usb->udev,
          pipe->ep_address);
   }
  } else if (ATH6KL_USB_IS_INT_EP(endpoint->bmAttributes)) {
   if (ATH6KL_USB_IS_DIR_IN(pipe->ep_address)) {
    pipe->usb_pipe_handle =
        usb_rcvintpipe(ar_usb->udev,
         pipe->ep_address);
   } else {
    pipe->usb_pipe_handle =
        usb_sndintpipe(ar_usb->udev,
         pipe->ep_address);
   }
  } else if (ATH6KL_USB_IS_ISOC_EP(endpoint->bmAttributes)) {

   if (ATH6KL_USB_IS_DIR_IN(pipe->ep_address)) {
    pipe->usb_pipe_handle =
        usb_rcvisocpipe(ar_usb->udev,
          pipe->ep_address);
   } else {
    pipe->usb_pipe_handle =
        usb_sndisocpipe(ar_usb->udev,
          pipe->ep_address);
   }
  }

  pipe->ep_desc = endpoint;

  if (!ATH6KL_USB_IS_DIR_IN(pipe->ep_address))
   pipe->flags |= ATH6KL_USB_PIPE_FLAG_TX;

  status = ath6kl_usb_alloc_pipe_resources(pipe, urbcount);
  if (status != 0)
   break;
 }

 return status;
}
