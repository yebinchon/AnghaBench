
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ftmac100_txdes {scalar_t__ txdes3; } ;



__attribute__((used)) static struct sk_buff *ftmac100_txdes_get_skb(struct ftmac100_txdes *txdes)
{
 return (struct sk_buff *)txdes->txdes3;
}
