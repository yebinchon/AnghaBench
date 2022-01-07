
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_r_vector {int irq_vector; int tasklet; int napi; } ;
struct TYPE_2__ {scalar_t__ netdev; } ;
struct nfp_net {TYPE_1__ dp; } ;


 int free_irq (int ,struct nfp_net_r_vector*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int netif_napi_del (int *) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static void
nfp_net_cleanup_vector(struct nfp_net *nn, struct nfp_net_r_vector *r_vec)
{
 irq_set_affinity_hint(r_vec->irq_vector, ((void*)0));
 if (nn->dp.netdev)
  netif_napi_del(&r_vec->napi);
 else
  tasklet_disable(&r_vec->tasklet);

 free_irq(r_vec->irq_vector, r_vec);
}
