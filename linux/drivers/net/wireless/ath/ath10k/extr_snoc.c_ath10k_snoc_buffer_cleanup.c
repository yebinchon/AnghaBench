
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc_pipe {int dummy; } ;
struct ath10k_snoc {struct ath10k_snoc_pipe* pipe_info; int rx_post_retry; } ;
struct ath10k {int dummy; } ;


 int CE_COUNT ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int ath10k_snoc_rx_pipe_cleanup (struct ath10k_snoc_pipe*) ;
 int ath10k_snoc_tx_pipe_cleanup (struct ath10k_snoc_pipe*) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void ath10k_snoc_buffer_cleanup(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct ath10k_snoc_pipe *pipe_info;
 int pipe_num;

 del_timer_sync(&ar_snoc->rx_post_retry);
 for (pipe_num = 0; pipe_num < CE_COUNT; pipe_num++) {
  pipe_info = &ar_snoc->pipe_info[pipe_num];
  ath10k_snoc_rx_pipe_cleanup(pipe_info);
  ath10k_snoc_tx_pipe_cleanup(pipe_info);
 }
}
