
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ahb {int * cpu_init_rst; int * radio_srif_rst; int * radio_warm_rst; int * radio_cold_rst; int * core_cold_rst; } ;
struct ath10k {int dummy; } ;


 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;

__attribute__((used)) static void ath10k_ahb_rst_ctrl_deinit(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);

 ar_ahb->core_cold_rst = ((void*)0);
 ar_ahb->radio_cold_rst = ((void*)0);
 ar_ahb->radio_warm_rst = ((void*)0);
 ar_ahb->radio_srif_rst = ((void*)0);
 ar_ahb->cpu_init_rst = ((void*)0);
}
