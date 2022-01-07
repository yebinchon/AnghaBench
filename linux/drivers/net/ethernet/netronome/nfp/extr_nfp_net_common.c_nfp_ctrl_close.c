
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_r_vecs; } ;
struct nfp_net {TYPE_2__* r_vecs; TYPE_1__ dp; } ;
struct TYPE_4__ {int tasklet; int irq_vector; } ;


 int disable_irq (int ) ;
 int nfp_net_clear_config_and_disable (struct nfp_net*) ;
 int nfp_net_close_free_all (struct nfp_net*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int tasklet_disable (int *) ;

void nfp_ctrl_close(struct nfp_net *nn)
{
 int r;

 rtnl_lock();

 for (r = 0; r < nn->dp.num_r_vecs; r++) {
  disable_irq(nn->r_vecs[r].irq_vector);
  tasklet_disable(&nn->r_vecs[r].tasklet);
 }

 nfp_net_clear_config_and_disable(nn);

 nfp_net_close_free_all(nn);

 rtnl_unlock();
}
