
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_dma; scalar_t__ transfer_buffer; int transfer_buffer_length; TYPE_1__* dev; } ;
struct pwc_device {struct urb** urbs; } ;
struct TYPE_2__ {int dev; } ;


 int MAX_ISO_BUFS ;
 int PWC_DEBUG_MEMORY (char*) ;
 int pwc_free_urb_buffer (int *,int ,scalar_t__,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void pwc_iso_free(struct pwc_device *pdev)
{
 int i;


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  struct urb *urb = pdev->urbs[i];

  if (urb) {
   PWC_DEBUG_MEMORY("Freeing URB\n");
   if (urb->transfer_buffer)
    pwc_free_urb_buffer(&urb->dev->dev,
          urb->transfer_buffer_length,
          urb->transfer_buffer,
          urb->transfer_dma);
   usb_free_urb(urb);
   pdev->urbs[i] = ((void*)0);
  }
 }
}
