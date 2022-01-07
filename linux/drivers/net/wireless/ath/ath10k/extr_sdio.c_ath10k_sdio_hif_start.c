
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ext_info; } ;
struct ath10k_sdio {int func; TYPE_2__ mbox_info; int * mbox_size; int * mbox_addr; } ;
struct ath10k {int dummy; } ;
struct TYPE_3__ {int htc_ext_sz; int htc_ext_addr; } ;


 int ath10k_sdio_hif_disable_intrs (struct ath10k*) ;
 int ath10k_sdio_hif_enable_intrs (struct ath10k*) ;
 int ath10k_sdio_hif_set_mbox_sleep (struct ath10k*,int) ;
 int ath10k_sdio_irq_handler ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int msleep (int) ;
 int sdio_claim_host (int ) ;
 int sdio_claim_irq (int ,int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int ath10k_sdio_hif_start(struct ath10k *ar)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 int ret;





 msleep(20);
 ret = ath10k_sdio_hif_disable_intrs(ar);
 if (ret)
  return ret;




 ar_sdio->mbox_addr[0] = ar_sdio->mbox_info.ext_info[0].htc_ext_addr;
 ar_sdio->mbox_size[0] = ar_sdio->mbox_info.ext_info[0].htc_ext_sz;

 sdio_claim_host(ar_sdio->func);


 ret = sdio_claim_irq(ar_sdio->func, ath10k_sdio_irq_handler);
 if (ret) {
  ath10k_warn(ar, "failed to claim sdio interrupt: %d\n", ret);
  sdio_release_host(ar_sdio->func);
  return ret;
 }

 sdio_release_host(ar_sdio->func);

 ret = ath10k_sdio_hif_enable_intrs(ar);
 if (ret)
  ath10k_warn(ar, "failed to enable sdio interrupts: %d\n", ret);


 ret = ath10k_sdio_hif_set_mbox_sleep(ar, 1);
 if (ret)
  return ret;


 msleep(20);

 ret = ath10k_sdio_hif_set_mbox_sleep(ar, 0);
 if (ret)
  return ret;

 return 0;
}
