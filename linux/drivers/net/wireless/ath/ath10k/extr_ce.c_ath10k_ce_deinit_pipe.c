
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_ce_deinit_dest_ring (struct ath10k*,unsigned int) ;
 int ath10k_ce_deinit_src_ring (struct ath10k*,unsigned int) ;

void ath10k_ce_deinit_pipe(struct ath10k *ar, unsigned int ce_id)
{
 ath10k_ce_deinit_src_ring(ar, ce_id);
 ath10k_ce_deinit_dest_ring(ar, ce_id);
}
