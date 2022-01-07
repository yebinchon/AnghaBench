
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_r_vector {int irq_entry; int irq_vector; int affinity_mask; int tasklet; int napi; int name; int handler; } ;
struct TYPE_2__ {scalar_t__ netdev; } ;
struct nfp_net {TYPE_1__ dp; } ;


 int NAPI_POLL_WEIGHT ;
 int disable_irq (int ) ;
 int irq_set_affinity_hint (int ,int *) ;
 int netif_napi_add (scalar_t__,int *,int ,int ) ;
 int netif_napi_del (int *) ;
 char* nfp_net_name (struct nfp_net*) ;
 int nfp_net_poll ;
 int nn_dbg (struct nfp_net*,char*,int,int ,int ) ;
 int nn_err (struct nfp_net*,char*,int ) ;
 int request_irq (int ,int ,int ,int ,struct nfp_net_r_vector*) ;
 int snprintf (int ,int,char*,char*,int) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int
nfp_net_prepare_vector(struct nfp_net *nn, struct nfp_net_r_vector *r_vec,
         int idx)
{
 int err;


 if (nn->dp.netdev)
  netif_napi_add(nn->dp.netdev, &r_vec->napi,
          nfp_net_poll, NAPI_POLL_WEIGHT);
 else
  tasklet_enable(&r_vec->tasklet);

 snprintf(r_vec->name, sizeof(r_vec->name),
   "%s-rxtx-%d", nfp_net_name(nn), idx);
 err = request_irq(r_vec->irq_vector, r_vec->handler, 0, r_vec->name,
     r_vec);
 if (err) {
  if (nn->dp.netdev)
   netif_napi_del(&r_vec->napi);
  else
   tasklet_disable(&r_vec->tasklet);

  nn_err(nn, "Error requesting IRQ %d\n", r_vec->irq_vector);
  return err;
 }
 disable_irq(r_vec->irq_vector);

 irq_set_affinity_hint(r_vec->irq_vector, &r_vec->affinity_mask);

 nn_dbg(nn, "RV%02d: irq=%03d/%03d\n", idx, r_vec->irq_vector,
        r_vec->irq_entry);

 return 0;
}
