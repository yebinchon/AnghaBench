
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc {int * pipe_info; } ;
struct ath10k {int dummy; } ;


 int CE_COUNT ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int ath10k_snoc_rx_post_pipe (int *) ;

__attribute__((used)) static void ath10k_snoc_rx_post(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 int i;

 for (i = 0; i < CE_COUNT; i++)
  ath10k_snoc_rx_post_pipe(&ar_snoc->pipe_info[i]);
}
