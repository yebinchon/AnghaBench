
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int urb_size; int * urb_buffer; int * urb_dma; int udev; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TM6000_NUM_URB_BUF ;
 void* kmalloc_array (int,int,int ) ;
 int memset (int ,int ,int ) ;
 int tm6000_err (char*,int ,int) ;
 int usb_alloc_coherent (int ,int ,int ,int *) ;

__attribute__((used)) static int tm6000_alloc_urb_buffers(struct tm6000_core *dev)
{
 int num_bufs = TM6000_NUM_URB_BUF;
 int i;

 if (dev->urb_buffer)
  return 0;

 dev->urb_buffer = kmalloc_array(num_bufs, sizeof(void *), GFP_KERNEL);
 if (!dev->urb_buffer)
  return -ENOMEM;

 dev->urb_dma = kmalloc_array(num_bufs, sizeof(dma_addr_t *),
         GFP_KERNEL);
 if (!dev->urb_dma)
  return -ENOMEM;

 for (i = 0; i < num_bufs; i++) {
  dev->urb_buffer[i] = usb_alloc_coherent(
     dev->udev, dev->urb_size,
     GFP_KERNEL, &dev->urb_dma[i]);
  if (!dev->urb_buffer[i]) {
   tm6000_err("unable to allocate %i bytes for transfer buffer %i\n",
        dev->urb_size, i);
   return -ENOMEM;
  }
  memset(dev->urb_buffer[i], 0, dev->urb_size);
 }

 return 0;
}
