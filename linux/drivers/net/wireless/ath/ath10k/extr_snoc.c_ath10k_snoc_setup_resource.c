
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k_snoc_pipe {int pipe_num; int buf_sz; struct ath10k* hif_ce_state; int * ce_hdl; } ;
struct ath10k_snoc {struct ath10k_snoc_pipe* pipe_info; int rx_post_retry; } ;
struct ath10k_ce {int * ce_states; int ce_lock; } ;
struct ath10k {int dummy; } ;
struct TYPE_3__ {int src_sz_max; } ;


 int CE_COUNT ;
 int ath10k_ce_alloc_pipe (struct ath10k*,int,TYPE_1__*) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_err (struct ath10k*,char*,int,int) ;
 int ath10k_snoc_init_napi (struct ath10k*) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int ath10k_snoc_rx_replenish_retry ;
 TYPE_1__* host_ce_config_wlan ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ath10k_snoc_setup_resource(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_snoc_pipe *pipe;
 int i, ret;

 timer_setup(&ar_snoc->rx_post_retry, ath10k_snoc_rx_replenish_retry, 0);
 spin_lock_init(&ce->ce_lock);
 for (i = 0; i < CE_COUNT; i++) {
  pipe = &ar_snoc->pipe_info[i];
  pipe->ce_hdl = &ce->ce_states[i];
  pipe->pipe_num = i;
  pipe->hif_ce_state = ar;

  ret = ath10k_ce_alloc_pipe(ar, i, &host_ce_config_wlan[i]);
  if (ret) {
   ath10k_err(ar, "failed to allocate copy engine pipe %d: %d\n",
       i, ret);
   return ret;
  }

  pipe->buf_sz = host_ce_config_wlan[i].src_sz_max;
 }
 ath10k_snoc_init_napi(ar);

 return 0;
}
