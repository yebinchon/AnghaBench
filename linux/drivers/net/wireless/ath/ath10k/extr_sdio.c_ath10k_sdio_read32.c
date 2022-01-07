
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdio_func {int dummy; } ;
struct ath10k_sdio {struct sdio_func* func; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_SDIO ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_readl (struct sdio_func*,int ,int*) ;
 int sdio_release_host (struct sdio_func*) ;

__attribute__((used)) static int ath10k_sdio_read32(struct ath10k *ar, u32 addr, u32 *val)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct sdio_func *func = ar_sdio->func;
 int ret;

 sdio_claim_host(func);
 *val = sdio_readl(func, addr, &ret);
 if (ret) {
  ath10k_warn(ar, "failed to read from address 0x%x: %d\n",
       addr, ret);
  goto out;
 }

 ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio read32 addr 0x%x val 0x%x\n",
     addr, *val);

out:
 sdio_release_host(func);

 return ret;
}
