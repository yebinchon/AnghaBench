
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int card; } ;


 int _mmc_detect_card_removed (struct mmc_host*) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 int mmc_get_card (int ,int *) ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_put_card (int ,int *) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_remove (struct mmc_host*) ;

__attribute__((used)) static void mmc_detect(struct mmc_host *host)
{
 int err;

 mmc_get_card(host->card, ((void*)0));




 err = _mmc_detect_card_removed(host);

 mmc_put_card(host->card, ((void*)0));

 if (err) {
  mmc_remove(host);

  mmc_claim_host(host);
  mmc_detach_bus(host);
  mmc_power_off(host);
  mmc_release_host(host);
 }
}
