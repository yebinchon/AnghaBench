
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int DBGPR (char*) ;
 int skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int xgbe_is_tso(struct sk_buff *skb)
{
 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 if (!skb_is_gso(skb))
  return 0;

 DBGPR("  TSO packet to be processed\n");

 return 1;
}
