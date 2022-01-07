
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ath10k_sdio_irq_proc_regs {int host_int_status; int rx_lookahead_valid; int * rx_lookahead; } ;
struct ath10k_sdio_irq_enable_regs {int int_status_en; } ;
struct ath10k_sdio_irq_data {int mtx; struct ath10k_sdio_irq_enable_regs* irq_en_reg; struct ath10k_sdio_irq_proc_regs* irq_proc_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;


 size_t ATH10K_HTC_MAILBOX ;
 int ATH10K_HTC_MAILBOX_MASK ;
 int FIELD_PREP (int ,int) ;
 int MBOX_HOST_INT_STATUS_ADDRESS ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_sdio_read (struct ath10k*,int ,struct ath10k_sdio_irq_proc_regs*,int) ;
 int ath10k_warn (struct ath10k*,char*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_sdio_mbox_read_int_status(struct ath10k *ar,
         u8 *host_int_status,
         u32 *lookahead)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
 struct ath10k_sdio_irq_proc_regs *irq_proc_reg = irq_data->irq_proc_reg;
 struct ath10k_sdio_irq_enable_regs *irq_en_reg = irq_data->irq_en_reg;
 u8 htc_mbox = FIELD_PREP(ATH10K_HTC_MAILBOX_MASK, 1);
 int ret;

 mutex_lock(&irq_data->mtx);

 *lookahead = 0;
 *host_int_status = 0;







 if (!irq_en_reg->int_status_en) {
  ret = 0;
  goto out;
 }






 ret = ath10k_sdio_read(ar, MBOX_HOST_INT_STATUS_ADDRESS,
          irq_proc_reg, sizeof(*irq_proc_reg));
 if (ret)
  goto out;


 *host_int_status = irq_proc_reg->host_int_status &
      irq_en_reg->int_status_en;


 if (!(*host_int_status & htc_mbox)) {
  *lookahead = 0;
  ret = 0;
  goto out;
 }




 *host_int_status &= ~htc_mbox;
 if (irq_proc_reg->rx_lookahead_valid & htc_mbox) {
  *lookahead = le32_to_cpu(
   irq_proc_reg->rx_lookahead[ATH10K_HTC_MAILBOX]);
  if (!*lookahead)
   ath10k_warn(ar, "sdio mbox lookahead is zero\n");
 }

out:
 mutex_unlock(&irq_data->mtx);
 return ret;
}
