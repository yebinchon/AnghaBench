
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_pcr {int * ms_pull_ctl_enable_tbl; int * sd_pull_ctl_enable_tbl; } ;


 int EINVAL ;
 int RTSX_MS_CARD ;
 int RTSX_SD_CARD ;
 int rtsx_pci_set_pull_ctl (struct rtsx_pcr*,int const*) ;

int rtsx_pci_card_pull_ctl_enable(struct rtsx_pcr *pcr, int card)
{
 const u32 *tbl;

 if (card == RTSX_SD_CARD)
  tbl = pcr->sd_pull_ctl_enable_tbl;
 else if (card == RTSX_MS_CARD)
  tbl = pcr->ms_pull_ctl_enable_tbl;
 else
  return -EINVAL;

 return rtsx_pci_set_pull_ctl(pcr, tbl);
}
