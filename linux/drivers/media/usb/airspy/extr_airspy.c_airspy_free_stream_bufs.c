
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airspy {int buf_num; int flags; int * dma_addr; int * buf_list; int buf_size; int udev; int dev; } ;


 int USB_STATE_URB_BUF ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int ,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static int airspy_free_stream_bufs(struct airspy *s)
{
 if (test_bit(USB_STATE_URB_BUF, &s->flags)) {
  while (s->buf_num) {
   s->buf_num--;
   dev_dbg(s->dev, "free buf=%d\n", s->buf_num);
   usb_free_coherent(s->udev, s->buf_size,
       s->buf_list[s->buf_num],
       s->dma_addr[s->buf_num]);
  }
 }
 clear_bit(USB_STATE_URB_BUF, &s->flags);

 return 0;
}
