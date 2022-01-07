
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int ** urb_dma; int ** urb_buffer; int urb_size; int udev; } ;


 int TM6000_NUM_URB_BUF ;
 int kfree (int **) ;
 int usb_free_coherent (int ,int ,int *,int *) ;

__attribute__((used)) static int tm6000_free_urb_buffers(struct tm6000_core *dev)
{
 int i;

 if (!dev->urb_buffer)
  return 0;

 for (i = 0; i < TM6000_NUM_URB_BUF; i++) {
  if (dev->urb_buffer[i]) {
   usb_free_coherent(dev->udev,
     dev->urb_size,
     dev->urb_buffer[i],
     dev->urb_dma[i]);
   dev->urb_buffer[i] = ((void*)0);
  }
 }
 kfree(dev->urb_buffer);
 kfree(dev->urb_dma);
 dev->urb_buffer = ((void*)0);
 dev->urb_dma = ((void*)0);

 return 0;
}
