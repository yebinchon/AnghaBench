
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hackrf_dev {int flags; int buf_num; int * dma_addr; int * buf_list; int buf_size; int udev; int dev; } ;


 int USB_STATE_URB_BUF ;
 int dev_dbg (int ,char*,int) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static int hackrf_free_stream_bufs(struct hackrf_dev *dev)
{
 if (dev->flags & USB_STATE_URB_BUF) {
  while (dev->buf_num) {
   dev->buf_num--;
   dev_dbg(dev->dev, "free buf=%d\n", dev->buf_num);
   usb_free_coherent(dev->udev, dev->buf_size,
       dev->buf_list[dev->buf_num],
       dev->dma_addr[dev->buf_num]);
  }
 }
 dev->flags &= ~USB_STATE_URB_BUF;

 return 0;
}
