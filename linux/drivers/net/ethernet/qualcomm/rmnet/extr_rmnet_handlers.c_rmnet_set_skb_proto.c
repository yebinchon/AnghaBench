
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; void* protocol; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int ETH_P_MAP ;


 void* htons (int ) ;

__attribute__((used)) static void rmnet_set_skb_proto(struct sk_buff *skb)
{
 switch (skb->data[0] & 0xF0) {
 case 129:
  skb->protocol = htons(ETH_P_IP);
  break;
 case 128:
  skb->protocol = htons(ETH_P_IPV6);
  break;
 default:
  skb->protocol = htons(ETH_P_MAP);
  break;
 }
}
