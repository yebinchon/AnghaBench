
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdio_func {int dummy; } ;
struct ath10k_sdio {struct sdio_func* func; } ;
struct ath10k {int dummy; } ;
typedef int __le32 ;


 int ATH10K_DBG_SDIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int ,int) ;
 int cpu_to_le32 (int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_writesb (struct sdio_func*,int ,int *,int) ;

__attribute__((used)) static int ath10k_sdio_writesb32(struct ath10k *ar, u32 addr, u32 val)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct sdio_func *func = ar_sdio->func;
 __le32 *buf;
 int ret;

 buf = kzalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 *buf = cpu_to_le32(val);

 sdio_claim_host(func);

 ret = sdio_writesb(func, addr, buf, sizeof(*buf));
 if (ret) {
  ath10k_warn(ar, "failed to write value 0x%x to fixed sb address 0x%x: %d\n",
       val, addr, ret);
  goto out;
 }

 ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio writesb32 addr 0x%x val 0x%x\n",
     addr, val);

out:
 sdio_release_host(func);

 kfree(buf);

 return ret;
}
