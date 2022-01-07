
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_dp {int num_r_vecs; int netdev; int num_stack_tx_rings; scalar_t__ num_rx_rings; scalar_t__ xdp_prog; int num_tx_rings; int fl_bufsz; } ;
struct TYPE_2__ {int num_r_vecs; } ;
struct nfp_net {int * r_vecs; TYPE_1__ dp; } ;
struct netlink_ext_ack {int dummy; } ;


 int kfree (struct nfp_net_dp*) ;
 int max (scalar_t__,int ) ;
 int netif_running (int ) ;
 int nfp_net_calc_fl_bufsz (struct nfp_net_dp*) ;
 int nfp_net_check_config (struct nfp_net*,struct nfp_net_dp*,struct netlink_ext_ack*) ;
 int nfp_net_cleanup_vector (struct nfp_net*,int *) ;
 int nfp_net_clear_config_and_disable (struct nfp_net*) ;
 int nfp_net_close_stack (struct nfp_net*) ;
 int nfp_net_dp_swap (struct nfp_net*,struct nfp_net_dp*) ;
 int nfp_net_dp_swap_enable (struct nfp_net*,struct nfp_net_dp*) ;
 int nfp_net_open_stack (struct nfp_net*) ;
 int nfp_net_prepare_vector (struct nfp_net*,int *,int) ;
 int nfp_net_rx_rings_free (struct nfp_net_dp*) ;
 int nfp_net_rx_rings_prepare (struct nfp_net*,struct nfp_net_dp*) ;
 int nfp_net_tx_rings_free (struct nfp_net_dp*) ;
 int nfp_net_tx_rings_prepare (struct nfp_net*,struct nfp_net_dp*) ;
 int nn_err (struct nfp_net*,char*,int,int) ;

int nfp_net_ring_reconfig(struct nfp_net *nn, struct nfp_net_dp *dp,
     struct netlink_ext_ack *extack)
{
 int r, err;

 dp->fl_bufsz = nfp_net_calc_fl_bufsz(dp);

 dp->num_stack_tx_rings = dp->num_tx_rings;
 if (dp->xdp_prog)
  dp->num_stack_tx_rings -= dp->num_rx_rings;

 dp->num_r_vecs = max(dp->num_rx_rings, dp->num_stack_tx_rings);

 err = nfp_net_check_config(nn, dp, extack);
 if (err)
  goto exit_free_dp;

 if (!netif_running(dp->netdev)) {
  nfp_net_dp_swap(nn, dp);
  err = 0;
  goto exit_free_dp;
 }


 for (r = nn->dp.num_r_vecs; r < dp->num_r_vecs; r++) {
  err = nfp_net_prepare_vector(nn, &nn->r_vecs[r], r);
  if (err) {
   dp->num_r_vecs = r;
   goto err_cleanup_vecs;
  }
 }

 err = nfp_net_rx_rings_prepare(nn, dp);
 if (err)
  goto err_cleanup_vecs;

 err = nfp_net_tx_rings_prepare(nn, dp);
 if (err)
  goto err_free_rx;


 nfp_net_close_stack(nn);
 nfp_net_clear_config_and_disable(nn);

 err = nfp_net_dp_swap_enable(nn, dp);
 if (err) {
  int err2;

  nfp_net_clear_config_and_disable(nn);


  err2 = nfp_net_dp_swap_enable(nn, dp);
  if (err2)
   nn_err(nn, "Can't restore ring config - FW communication failed (%d,%d)\n",
          err, err2);
 }
 for (r = dp->num_r_vecs - 1; r >= nn->dp.num_r_vecs; r--)
  nfp_net_cleanup_vector(nn, &nn->r_vecs[r]);

 nfp_net_rx_rings_free(dp);
 nfp_net_tx_rings_free(dp);

 nfp_net_open_stack(nn);
exit_free_dp:
 kfree(dp);

 return err;

err_free_rx:
 nfp_net_rx_rings_free(dp);
err_cleanup_vecs:
 for (r = dp->num_r_vecs - 1; r >= nn->dp.num_r_vecs; r--)
  nfp_net_cleanup_vector(nn, &nn->r_vecs[r]);
 kfree(dp);
 return err;
}
