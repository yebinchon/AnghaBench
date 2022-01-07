
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ protocol; } ;


 scalar_t__ ETHER_STD_PACKET ;
 int ETH_P_8021Q ;
 scalar_t__ INGRESS_CRC ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static bool xgene_enet_errata_10GE_10(struct sk_buff *skb, u32 len, u8 status)
{
 if (status == INGRESS_CRC &&
     len >= (ETHER_STD_PACKET + 1) &&
     len <= (ETHER_STD_PACKET + 4) &&
     skb->protocol == htons(ETH_P_8021Q))
  return 1;

 return 0;
}
