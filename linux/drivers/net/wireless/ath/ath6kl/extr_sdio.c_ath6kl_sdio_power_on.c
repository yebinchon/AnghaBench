
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct ath6kl_sdio {int is_disabled; struct sdio_func* func; } ;
struct ath6kl {int dummy; } ;


 int ATH6KL_DBG_BOOT ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_err (char*,int) ;
 int ath6kl_sdio_config (struct ath6kl*) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int msleep (int) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;

__attribute__((used)) static int ath6kl_sdio_power_on(struct ath6kl *ar)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 struct sdio_func *func = ar_sdio->func;
 int ret = 0;

 if (!ar_sdio->is_disabled)
  return 0;

 ath6kl_dbg(ATH6KL_DBG_BOOT, "sdio power on\n");

 sdio_claim_host(func);

 ret = sdio_enable_func(func);
 if (ret) {
  ath6kl_err("Unable to enable sdio func: %d)\n", ret);
  sdio_release_host(func);
  return ret;
 }

 sdio_release_host(func);





 msleep(10);

 ret = ath6kl_sdio_config(ar);
 if (ret) {
  ath6kl_err("Failed to config sdio: %d\n", ret);
  goto out;
 }

 ar_sdio->is_disabled = 0;

out:
 return ret;
}
