
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_sdio {int is_disabled; int func; } ;
struct ath6kl {int dummy; } ;


 int ATH6KL_DBG_BOOT ;
 int ath6kl_dbg (int ,char*) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int sdio_claim_host (int ) ;
 int sdio_disable_func (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int ath6kl_sdio_power_off(struct ath6kl *ar)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 int ret;

 if (ar_sdio->is_disabled)
  return 0;

 ath6kl_dbg(ATH6KL_DBG_BOOT, "sdio power off\n");


 sdio_claim_host(ar_sdio->func);
 ret = sdio_disable_func(ar_sdio->func);
 sdio_release_host(ar_sdio->func);

 if (ret)
  return ret;

 ar_sdio->is_disabled = 1;

 return ret;
}
