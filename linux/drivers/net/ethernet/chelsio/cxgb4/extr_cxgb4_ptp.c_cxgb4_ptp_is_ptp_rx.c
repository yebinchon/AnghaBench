
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ dest; scalar_t__ source; } ;
struct sk_buff {scalar_t__ data; } ;


 scalar_t__ ETH_HLEN ;
 scalar_t__ IPV4_HLEN (scalar_t__) ;
 int PTP_EVENT_PORT ;
 scalar_t__ htons (int ) ;

bool cxgb4_ptp_is_ptp_rx(struct sk_buff *skb)
{
 struct udphdr *uh = (struct udphdr *)(skb->data + ETH_HLEN +
           IPV4_HLEN(skb->data));

 return uh->dest == htons(PTP_EVENT_PORT) &&
  uh->source == htons(PTP_EVENT_PORT);
}
