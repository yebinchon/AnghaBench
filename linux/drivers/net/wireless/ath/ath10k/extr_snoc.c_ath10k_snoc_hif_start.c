
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc {int flags; } ;
struct ath10k {int napi; } ;


 int ATH10K_DBG_BOOT ;
 int ATH10K_SNOC_FLAG_RECOVERY ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_snoc_irq_enable (struct ath10k*) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int ath10k_snoc_rx_post (struct ath10k*) ;
 int clear_bit (int ,int *) ;
 int napi_enable (int *) ;

__attribute__((used)) static int ath10k_snoc_hif_start(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);

 napi_enable(&ar->napi);
 ath10k_snoc_irq_enable(ar);
 ath10k_snoc_rx_post(ar);

 clear_bit(ATH10K_SNOC_FLAG_RECOVERY, &ar_snoc->flags);

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif start\n");

 return 0;
}
