
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct mmc_card {int dummy; } ;


 int mmc_app_send_scr (struct mmc_card*) ;
 int mmc_card_set_readonly (struct mmc_card*) ;
 int mmc_decode_scr (struct mmc_card*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_init_erase (struct mmc_card*) ;
 int mmc_read_ssr (struct mmc_card*) ;
 int mmc_read_switch (struct mmc_card*) ;
 int mmc_sd_get_ro (struct mmc_host*) ;
 int mmc_spi_set_crc (struct mmc_host*,int ) ;
 int pr_warn (char*,int ) ;
 int use_spi_crc ;

int mmc_sd_setup_card(struct mmc_host *host, struct mmc_card *card,
 bool reinit)
{
 int err;

 if (!reinit) {



  err = mmc_app_send_scr(card);
  if (err)
   return err;

  err = mmc_decode_scr(card);
  if (err)
   return err;




  err = mmc_read_ssr(card);
  if (err)
   return err;


  mmc_init_erase(card);




  err = mmc_read_switch(card);
  if (err)
   return err;
 }







 if (mmc_host_is_spi(host)) {
  err = mmc_spi_set_crc(host, use_spi_crc);
  if (err)
   return err;
 }




 if (!reinit) {
  int ro = mmc_sd_get_ro(host);

  if (ro < 0) {
   pr_warn("%s: host does not support reading read-only switch, assuming write-enable\n",
    mmc_hostname(host));
  } else if (ro > 0) {
   mmc_card_set_readonly(card);
  }
 }

 return 0;
}
