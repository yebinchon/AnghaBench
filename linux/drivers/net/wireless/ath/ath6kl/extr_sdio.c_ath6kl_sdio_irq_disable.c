
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_sdio {int func; int irq_wq; int irq_handling; } ;
struct ath6kl {int dummy; } ;


 int ath6kl_err (char*,int) ;
 int ath6kl_sdio_is_on_irq (struct ath6kl*) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 scalar_t__ atomic_read (int *) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int sdio_release_irq (int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void ath6kl_sdio_irq_disable(struct ath6kl *ar)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 int ret;

 sdio_claim_host(ar_sdio->func);

 if (atomic_read(&ar_sdio->irq_handling)) {
  sdio_release_host(ar_sdio->func);

  ret = wait_event_interruptible(ar_sdio->irq_wq,
            ath6kl_sdio_is_on_irq(ar));
  if (ret)
   return;

  sdio_claim_host(ar_sdio->func);
 }

 ret = sdio_release_irq(ar_sdio->func);
 if (ret)
  ath6kl_err("Failed to release sdio irq: %d\n", ret);

 sdio_release_host(ar_sdio->func);
}
