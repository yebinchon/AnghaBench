
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmci_host {int dummy; } ;


 int MCI_DPSM_ENABLE ;
 int mmci_dctrl_blksz (struct mmci_host*) ;

__attribute__((used)) static u32 mmci_get_dctrl_cfg(struct mmci_host *host)
{
 return MCI_DPSM_ENABLE | mmci_dctrl_blksz(host);
}
