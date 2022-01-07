
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;


 int EAGAIN ;
 int SD_OCR_CCS ;
 int SD_OCR_S18R ;
 int SD_OCR_XPC ;
 int mmc_go_idle (struct mmc_host*) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 scalar_t__ mmc_host_uhs (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_send_app_op_cond (struct mmc_host*,int,int*) ;
 int mmc_send_cid (struct mmc_host*,int*) ;
 int mmc_send_if_cond (struct mmc_host*,int) ;
 int mmc_set_uhs_voltage (struct mmc_host*,int) ;
 int pr_warn (char*,int ) ;
 int sd_get_host_max_current (struct mmc_host*) ;

int mmc_sd_get_cid(struct mmc_host *host, u32 ocr, u32 *cid, u32 *rocr)
{
 int err;
 u32 max_current;
 int retries = 10;
 u32 pocr = ocr;

try_again:
 if (!retries) {
  ocr &= ~SD_OCR_S18R;
  pr_warn("%s: Skipping voltage switch\n", mmc_hostname(host));
 }







 mmc_go_idle(host);







 err = mmc_send_if_cond(host, ocr);
 if (!err)
  ocr |= SD_OCR_CCS;






 if (retries && mmc_host_uhs(host))
  ocr |= SD_OCR_S18R;





 max_current = sd_get_host_max_current(host);
 if (max_current > 150)
  ocr |= SD_OCR_XPC;

 err = mmc_send_app_op_cond(host, ocr, rocr);
 if (err)
  return err;





 if (!mmc_host_is_spi(host) && rocr &&
    ((*rocr & 0x41000000) == 0x41000000)) {
  err = mmc_set_uhs_voltage(host, pocr);
  if (err == -EAGAIN) {
   retries--;
   goto try_again;
  } else if (err) {
   retries = 0;
   goto try_again;
  }
 }

 err = mmc_send_cid(host, cid);
 return err;
}
