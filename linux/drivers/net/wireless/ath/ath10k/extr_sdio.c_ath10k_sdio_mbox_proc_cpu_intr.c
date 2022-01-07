
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ath10k_sdio_irq_data {int mtx; TYPE_2__* irq_proc_reg; TYPE_1__* irq_en_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int restart_work; int workqueue; } ;
struct TYPE_4__ {int cpu_int_status; } ;
struct TYPE_3__ {int cpu_int_status_en; } ;


 int EIO ;
 int MBOX_CPU_INT_STATUS_ADDRESS ;
 int MBOX_CPU_STATUS_ENABLE_ASSERT_MASK ;
 int ath10k_err (struct ath10k*,char*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_sdio_writesb32 (struct ath10k*,int ,int) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int ath10k_sdio_mbox_proc_cpu_intr(struct ath10k *ar)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
 u8 cpu_int_status;
 int ret;

 mutex_lock(&irq_data->mtx);
 cpu_int_status = irq_data->irq_proc_reg->cpu_int_status &
    irq_data->irq_en_reg->cpu_int_status_en;
 if (!cpu_int_status) {
  ath10k_warn(ar, "CPU interrupt status is zero\n");
  ret = -EIO;
  goto out;
 }


 irq_data->irq_proc_reg->cpu_int_status &= ~cpu_int_status;
 ret = ath10k_sdio_writesb32(ar, MBOX_CPU_INT_STATUS_ADDRESS,
        cpu_int_status);
 if (ret) {
  ath10k_warn(ar, "unable to write to cpu interrupt status address: %d\n",
       ret);
  goto out;
 }

out:
 mutex_unlock(&irq_data->mtx);
 if (cpu_int_status & MBOX_CPU_STATUS_ENABLE_ASSERT_MASK) {
  ath10k_err(ar, "firmware crashed!\n");
  queue_work(ar->workqueue, &ar->restart_work);
 }
 return ret;
}
