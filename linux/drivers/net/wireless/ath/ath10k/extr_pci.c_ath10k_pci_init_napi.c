
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int napi; int napi_dev; } ;


 int ATH10K_NAPI_BUDGET ;
 int ath10k_pci_napi_poll ;
 int netif_napi_add (int *,int *,int ,int ) ;

void ath10k_pci_init_napi(struct ath10k *ar)
{
 netif_napi_add(&ar->napi_dev, &ar->napi, ath10k_pci_napi_poll,
         ATH10K_NAPI_BUDGET);
}
