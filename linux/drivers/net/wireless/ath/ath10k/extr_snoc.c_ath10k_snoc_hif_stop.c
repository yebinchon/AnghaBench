
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int napi; int dev_flags; } ;


 int ATH10K_DBG_BOOT ;
 int ATH10K_FLAG_CRASH_FLUSH ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_snoc_buffer_cleanup (struct ath10k*) ;
 int ath10k_snoc_irq_disable (struct ath10k*) ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ath10k_snoc_hif_stop(struct ath10k *ar)
{
 if (!test_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags))
  ath10k_snoc_irq_disable(ar);

 napi_synchronize(&ar->napi);
 napi_disable(&ar->napi);
 ath10k_snoc_buffer_cleanup(ar);
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif stop\n");
}
