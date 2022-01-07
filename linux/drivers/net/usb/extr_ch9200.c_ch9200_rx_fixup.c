
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* udev; } ;
struct sk_buff {int len; int* data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int skb_trim (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ch9200_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 int len = 0;
 int rx_overhead = 0;

 rx_overhead = 64;

 if (unlikely(skb->len < rx_overhead)) {
  dev_err(&dev->udev->dev, "unexpected tiny rx frame\n");
  return 0;
 }

 len = (skb->data[skb->len - 16] | skb->data[skb->len - 15] << 8);
 skb_trim(skb, len);

 return 1;
}
