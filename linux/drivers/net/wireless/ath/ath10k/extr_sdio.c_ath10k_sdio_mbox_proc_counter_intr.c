
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ath10k_sdio_irq_data {int mtx; TYPE_2__* irq_en_reg; TYPE_1__* irq_proc_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {int cntr_int_status_en; } ;
struct TYPE_3__ {int counter_int_status; } ;


 int ATH10K_SDIO_TARGET_DEBUG_INTR_MASK ;
 int ath10k_sdio_mbox_proc_dbg_intr (struct ath10k*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_sdio_mbox_proc_counter_intr(struct ath10k *ar)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
 u8 counter_int_status;
 int ret;

 mutex_lock(&irq_data->mtx);
 counter_int_status = irq_data->irq_proc_reg->counter_int_status &
        irq_data->irq_en_reg->cntr_int_status_en;





 if (counter_int_status & ATH10K_SDIO_TARGET_DEBUG_INTR_MASK)
  ret = ath10k_sdio_mbox_proc_dbg_intr(ar);
 else
  ret = 0;

 mutex_unlock(&irq_data->mtx);

 return ret;
}
