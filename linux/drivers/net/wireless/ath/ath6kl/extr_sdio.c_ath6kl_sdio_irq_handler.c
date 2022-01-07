
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct ath6kl_sdio {int irq_wq; int irq_handling; int func; int ar; } ;


 int ATH6KL_DBG_SDIO ;
 int ECANCELED ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_hif_intr_bh_handler (int ) ;
 int atomic_set (int *,int) ;
 int sdio_claim_host (int ) ;
 struct ath6kl_sdio* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ath6kl_sdio_irq_handler(struct sdio_func *func)
{
 int status;
 struct ath6kl_sdio *ar_sdio;

 ath6kl_dbg(ATH6KL_DBG_SDIO, "irq\n");

 ar_sdio = sdio_get_drvdata(func);
 atomic_set(&ar_sdio->irq_handling, 1);




 sdio_release_host(ar_sdio->func);

 status = ath6kl_hif_intr_bh_handler(ar_sdio->ar);
 sdio_claim_host(ar_sdio->func);

 atomic_set(&ar_sdio->irq_handling, 0);
 wake_up(&ar_sdio->irq_wq);

 WARN_ON(status && status != -ECANCELED);
}
