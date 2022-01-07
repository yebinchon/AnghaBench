
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iavf_ring {int dummy; } ;


 scalar_t__ eth_skb_pad (struct sk_buff*) ;

__attribute__((used)) static bool iavf_cleanup_headers(struct iavf_ring *rx_ring, struct sk_buff *skb)
{

 if (eth_skb_pad(skb))
  return 1;

 return 0;
}
