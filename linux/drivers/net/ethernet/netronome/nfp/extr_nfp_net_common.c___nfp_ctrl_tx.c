
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_net_r_vector {int dummy; } ;
struct nfp_net {struct nfp_net_r_vector* r_vecs; } ;


 int nfp_ctrl_tx_one (struct nfp_net*,struct nfp_net_r_vector*,struct sk_buff*,int) ;

bool __nfp_ctrl_tx(struct nfp_net *nn, struct sk_buff *skb)
{
 struct nfp_net_r_vector *r_vec = &nn->r_vecs[0];

 return nfp_ctrl_tx_one(nn, r_vec, skb, 0);
}
