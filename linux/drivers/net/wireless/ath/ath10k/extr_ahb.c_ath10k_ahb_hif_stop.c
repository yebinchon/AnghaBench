
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ahb {int irq; } ;
struct ath10k {int napi; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_ahb_irq_disable (struct ath10k*) ;
 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_flush (struct ath10k*) ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void ath10k_ahb_hif_stop(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot ahb hif stop\n");

 ath10k_ahb_irq_disable(ar);
 synchronize_irq(ar_ahb->irq);

 napi_synchronize(&ar->napi);
 napi_disable(&ar->napi);

 ath10k_pci_flush(ar);
}
