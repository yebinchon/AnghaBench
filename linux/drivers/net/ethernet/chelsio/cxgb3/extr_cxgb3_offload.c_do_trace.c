
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int lldev; } ;
struct sk_buff {int dev; int protocol; } ;
struct cpl_trace_pkt {int dummy; } ;


 struct cpl_trace_pkt* cplhdr (struct sk_buff*) ;
 int htons (int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int do_trace(struct t3cdev *dev, struct sk_buff *skb)
{
 struct cpl_trace_pkt *p = cplhdr(skb);

 skb->protocol = htons(0xffff);
 skb->dev = dev->lldev;
 skb_pull(skb, sizeof(*p));
 skb_reset_mac_header(skb);
 netif_receive_skb(skb);
 return 0;
}
