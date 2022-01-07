
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_dp {scalar_t__ num_stack_tx_rings; scalar_t__ num_r_vecs; int * rx_rings; int * tx_rings; scalar_t__ fl_bufsz; } ;
struct nfp_net {struct nfp_net_dp dp; } ;


 int GFP_KERNEL ;
 struct nfp_net_dp* kmalloc (int,int ) ;

struct nfp_net_dp *nfp_net_clone_dp(struct nfp_net *nn)
{
 struct nfp_net_dp *new;

 new = kmalloc(sizeof(*new), GFP_KERNEL);
 if (!new)
  return ((void*)0);

 *new = nn->dp;


 new->fl_bufsz = 0;
 new->tx_rings = ((void*)0);
 new->rx_rings = ((void*)0);
 new->num_r_vecs = 0;
 new->num_stack_tx_rings = 0;

 return new;
}
