
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_net_r_vector {int nfp_net; int queue; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 scalar_t__ nfp_ctrl_tx_one (int ,struct nfp_net_r_vector*,struct sk_buff*,int) ;

__attribute__((used)) static void __nfp_ctrl_tx_queued(struct nfp_net_r_vector *r_vec)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&r_vec->queue)))
  if (nfp_ctrl_tx_one(r_vec->nfp_net, r_vec, skb, 1))
   return;
}
