
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_sdio {int func; } ;
struct ath6kl {int dummy; } ;


 int ath6kl_err (char*,int) ;
 int ath6kl_sdio_irq_handler ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int sdio_claim_host (int ) ;
 int sdio_claim_irq (int ,int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static void ath6kl_sdio_irq_enable(struct ath6kl *ar)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 int ret;

 sdio_claim_host(ar_sdio->func);


 ret = sdio_claim_irq(ar_sdio->func, ath6kl_sdio_irq_handler);
 if (ret)
  ath6kl_err("Failed to claim sdio irq: %d\n", ret);

 sdio_release_host(ar_sdio->func);
}
