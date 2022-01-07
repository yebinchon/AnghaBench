
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct ath6kl_usb_pipe {int io_comp_queue; int io_complete_work; } ;
struct ath6kl_usb {int * diag_resp_buffer; int * diag_cmd_buffer; struct ath6kl_usb_pipe* pipes; struct usb_interface* interface; struct usb_device* udev; int cs_lock; } ;


 int ATH6KL_USB_MAX_DIAG_CMD ;
 int ATH6KL_USB_MAX_DIAG_RESP ;
 int ATH6KL_USB_PIPE_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int ath6kl_usb_destroy (struct ath6kl_usb*) ;
 int ath6kl_usb_io_comp_work ;
 int ath6kl_usb_setup_pipe_resources (struct ath6kl_usb*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 void* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int usb_set_intfdata (struct usb_interface*,struct ath6kl_usb*) ;

__attribute__((used)) static struct ath6kl_usb *ath6kl_usb_create(struct usb_interface *interface)
{
 struct usb_device *dev = interface_to_usbdev(interface);
 struct ath6kl_usb *ar_usb;
 struct ath6kl_usb_pipe *pipe;
 int status = 0;
 int i;

 ar_usb = kzalloc(sizeof(struct ath6kl_usb), GFP_KERNEL);
 if (ar_usb == ((void*)0))
  goto fail_ath6kl_usb_create;

 usb_set_intfdata(interface, ar_usb);
 spin_lock_init(&(ar_usb->cs_lock));
 ar_usb->udev = dev;
 ar_usb->interface = interface;

 for (i = 0; i < ATH6KL_USB_PIPE_MAX; i++) {
  pipe = &ar_usb->pipes[i];
  INIT_WORK(&pipe->io_complete_work,
     ath6kl_usb_io_comp_work);
  skb_queue_head_init(&pipe->io_comp_queue);
 }

 ar_usb->diag_cmd_buffer = kzalloc(ATH6KL_USB_MAX_DIAG_CMD, GFP_KERNEL);
 if (ar_usb->diag_cmd_buffer == ((void*)0)) {
  status = -ENOMEM;
  goto fail_ath6kl_usb_create;
 }

 ar_usb->diag_resp_buffer = kzalloc(ATH6KL_USB_MAX_DIAG_RESP,
        GFP_KERNEL);
 if (ar_usb->diag_resp_buffer == ((void*)0)) {
  status = -ENOMEM;
  goto fail_ath6kl_usb_create;
 }

 status = ath6kl_usb_setup_pipe_resources(ar_usb);

fail_ath6kl_usb_create:
 if (status != 0) {
  ath6kl_usb_destroy(ar_usb);
  ar_usb = ((void*)0);
 }
 return ar_usb;
}
