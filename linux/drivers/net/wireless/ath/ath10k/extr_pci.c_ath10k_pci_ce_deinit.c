
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int CE_COUNT ;
 int ath10k_ce_deinit_pipe (struct ath10k*,int) ;

void ath10k_pci_ce_deinit(struct ath10k *ar)
{
 int i;

 for (i = 0; i < CE_COUNT; i++)
  ath10k_ce_deinit_pipe(ar, i);
}
