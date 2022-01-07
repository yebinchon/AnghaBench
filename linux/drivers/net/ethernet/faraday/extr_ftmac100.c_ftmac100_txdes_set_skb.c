
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ftmac100_txdes {unsigned int txdes3; } ;



__attribute__((used)) static void ftmac100_txdes_set_skb(struct ftmac100_txdes *txdes, struct sk_buff *skb)
{
 txdes->txdes3 = (unsigned int)skb;
}
