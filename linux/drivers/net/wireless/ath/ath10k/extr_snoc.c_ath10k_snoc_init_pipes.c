
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int CE_COUNT ;
 int ath10k_ce_init_pipe (struct ath10k*,int,int *) ;
 int ath10k_err (struct ath10k*,char*,int,int) ;
 int * host_ce_config_wlan ;

__attribute__((used)) static int ath10k_snoc_init_pipes(struct ath10k *ar)
{
 int i, ret;

 for (i = 0; i < CE_COUNT; i++) {
  ret = ath10k_ce_init_pipe(ar, i, &host_ce_config_wlan[i]);
  if (ret) {
   ath10k_err(ar, "failed to initialize copy engine pipe %d: %d\n",
       i, ret);
   return ret;
  }
 }

 return 0;
}
