
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct sk_buff {int len; int * data; } ;
typedef int __le16 ;


 int INT51X1_HEADER_SIZE ;
 int le16_to_cpu (int ) ;
 int netdev_err (int ,char*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int int51x1_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 int len;

 if (!(pskb_may_pull(skb, INT51X1_HEADER_SIZE))) {
  netdev_err(dev->net, "unexpected tiny rx frame\n");
  return 0;
 }

 len = le16_to_cpu(*(__le16 *)&skb->data[skb->len - 2]);

 skb_trim(skb, len);

 return 1;
}
