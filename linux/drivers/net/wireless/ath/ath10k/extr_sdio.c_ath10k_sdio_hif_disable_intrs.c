
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_sdio_irq_enable_regs {int int_status_en; } ;
struct ath10k_sdio_irq_data {int mtx; struct ath10k_sdio_irq_enable_regs* irq_en_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;


 int MBOX_INT_STATUS_ENABLE_ADDRESS ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_sdio_write (struct ath10k*,int ,int *,int) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int memset (struct ath10k_sdio_irq_enable_regs*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_sdio_hif_disable_intrs(struct ath10k *ar)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
 struct ath10k_sdio_irq_enable_regs *regs = irq_data->irq_en_reg;
 int ret;

 mutex_lock(&irq_data->mtx);

 memset(regs, 0, sizeof(*regs));
 ret = ath10k_sdio_write(ar, MBOX_INT_STATUS_ENABLE_ADDRESS,
    &regs->int_status_en, sizeof(*regs));
 if (ret)
  ath10k_warn(ar, "unable to disable sdio interrupts: %d\n", ret);

 mutex_unlock(&irq_data->mtx);

 return ret;
}
