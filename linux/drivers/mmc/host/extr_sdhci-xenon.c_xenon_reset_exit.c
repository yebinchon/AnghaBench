
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_RESET_ALL ;
 int xenon_mask_cmd_conflict_err (struct sdhci_host*) ;
 int xenon_retune_setup (struct sdhci_host*) ;
 int xenon_set_acg (struct sdhci_host*,int) ;
 int xenon_set_sdclk_off_idle (struct sdhci_host*,unsigned char,int) ;

__attribute__((used)) static void xenon_reset_exit(struct sdhci_host *host,
        unsigned char sdhc_id, u8 mask)
{

 if (!(mask & SDHCI_RESET_ALL))
  return;


 xenon_retune_setup(host);

 xenon_set_acg(host, 1);

 xenon_set_sdclk_off_idle(host, sdhc_id, 0);

 xenon_mask_cmd_conflict_err(host);
}
