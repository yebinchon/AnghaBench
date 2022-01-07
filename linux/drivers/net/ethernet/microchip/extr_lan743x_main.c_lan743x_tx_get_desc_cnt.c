
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct lan743x_tx {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int lan743x_tx_get_desc_cnt(struct lan743x_tx *tx,
       struct sk_buff *skb)
{
 int result = 1;
 int nr_frags = 0;

 if (skb_is_gso(skb))
  result++;
 nr_frags = skb_shinfo(skb)->nr_frags;
 result += nr_frags;
 return result;
}
