
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL ;
 int ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF ;
 int ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON ;
 int ath10k_sdio_read32 (struct ath10k*,int ,int *) ;
 int ath10k_sdio_write32 (struct ath10k*,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static int ath10k_sdio_hif_set_mbox_sleep(struct ath10k *ar, bool enable_sleep)
{
 u32 val;
 int ret;

 ret = ath10k_sdio_read32(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, &val);
 if (ret) {
  ath10k_warn(ar, "failed to read fifo/chip control register: %d\n",
       ret);
  return ret;
 }

 if (enable_sleep)
  val &= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF;
 else
  val |= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON;

 ret = ath10k_sdio_write32(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, val);
 if (ret) {
  ath10k_warn(ar, "failed to write to FIFO_TIMEOUT_AND_CHIP_CONTROL: %d",
       ret);
  return ret;
 }

 return 0;
}
