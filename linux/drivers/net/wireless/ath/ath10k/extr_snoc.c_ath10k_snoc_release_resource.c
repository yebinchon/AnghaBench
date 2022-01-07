
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int napi; } ;


 int CE_COUNT ;
 int ath10k_ce_free_pipe (struct ath10k*,int) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void ath10k_snoc_release_resource(struct ath10k *ar)
{
 int i;

 netif_napi_del(&ar->napi);
 for (i = 0; i < CE_COUNT; i++)
  ath10k_ce_free_pipe(ar, i);
}
