
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct aggr_info {int rx_amsdu_freeq; } ;


 int AGGR_NUM_OF_FREE_NETBUFS ;
 int ath6kl_alloc_netbufs (int *,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_len (int *) ;

__attribute__((used)) static struct sk_buff *aggr_get_free_skb(struct aggr_info *p_aggr)
{
 struct sk_buff *skb = ((void*)0);

 if (skb_queue_len(&p_aggr->rx_amsdu_freeq) <
     (AGGR_NUM_OF_FREE_NETBUFS >> 2))
  ath6kl_alloc_netbufs(&p_aggr->rx_amsdu_freeq,
         AGGR_NUM_OF_FREE_NETBUFS);

 skb = skb_dequeue(&p_aggr->rx_amsdu_freeq);

 return skb;
}
