
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ahb {int * rtc_clk; int * ref_clk; int * cmd_clk; } ;
struct ath10k {int dummy; } ;


 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;

__attribute__((used)) static void ath10k_ahb_clock_deinit(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);

 ar_ahb->cmd_clk = ((void*)0);
 ar_ahb->ref_clk = ((void*)0);
 ar_ahb->rtc_clk = ((void*)0);
}
