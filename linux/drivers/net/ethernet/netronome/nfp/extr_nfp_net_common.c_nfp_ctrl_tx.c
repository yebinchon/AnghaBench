
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_net_r_vector {int lock; } ;
struct nfp_net {struct nfp_net_r_vector* r_vecs; } ;


 int nfp_ctrl_tx_one (struct nfp_net*,struct nfp_net_r_vector*,struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool nfp_ctrl_tx(struct nfp_net *nn, struct sk_buff *skb)
{
 struct nfp_net_r_vector *r_vec = &nn->r_vecs[0];
 bool ret;

 spin_lock_bh(&r_vec->lock);
 ret = nfp_ctrl_tx_one(nn, r_vec, skb, 0);
 spin_unlock_bh(&r_vec->lock);

 return ret;
}
