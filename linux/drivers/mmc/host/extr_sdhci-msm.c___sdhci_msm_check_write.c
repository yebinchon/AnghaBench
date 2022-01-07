
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int transfer_mode; scalar_t__ pwr_irq_flag; int use_cdr; } ;
struct sdhci_host {int pwr; } ;


 int MMC_SEND_TUNING_BLOCK ;
 int MMC_SEND_TUNING_BLOCK_HS200 ;
 int REQ_BUS_OFF ;
 int REQ_BUS_ON ;
 int REQ_IO_HIGH ;
 int REQ_IO_LOW ;

 int SDHCI_CTRL_VDD_180 ;
 int SDHCI_GET_CMD (int) ;


 int SDHCI_RESET_ALL ;


 int SDHCI_TRNS_READ ;
 int mb () ;
 int sdhci_msm_set_cdr (struct sdhci_host*,int) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int __sdhci_msm_check_write(struct sdhci_host *host, u16 val, int reg)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
 u32 req_type = 0;

 switch (reg) {
 case 131:
  req_type = (val & SDHCI_CTRL_VDD_180) ? REQ_IO_LOW :
   REQ_IO_HIGH;
  break;
 case 129:
  if (host->pwr && (val & SDHCI_RESET_ALL))
   req_type = REQ_BUS_OFF;
  break;
 case 130:
  req_type = !val ? REQ_BUS_OFF : REQ_BUS_ON;
  break;
 case 128:
  msm_host->transfer_mode = val;
  break;
 case 132:
  if (!msm_host->use_cdr)
   break;
  if ((msm_host->transfer_mode & SDHCI_TRNS_READ) &&
      SDHCI_GET_CMD(val) != MMC_SEND_TUNING_BLOCK_HS200 &&
      SDHCI_GET_CMD(val) != MMC_SEND_TUNING_BLOCK)
   sdhci_msm_set_cdr(host, 1);
  else
   sdhci_msm_set_cdr(host, 0);
  break;
 }

 if (req_type) {
  msm_host->pwr_irq_flag = 0;




  mb();
 }
 return req_type;
}
