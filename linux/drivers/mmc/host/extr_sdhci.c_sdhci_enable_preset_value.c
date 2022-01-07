
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ version; int preset_enabled; int flags; } ;


 int SDHCI_CTRL_PRESET_VAL_ENABLE ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_PV_ENABLED ;
 scalar_t__ SDHCI_SPEC_300 ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_enable_preset_value(struct sdhci_host *host, bool enable)
{

 if (host->version < SDHCI_SPEC_300)
  return;





 if (host->preset_enabled != enable) {
  u16 ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);

  if (enable)
   ctrl |= SDHCI_CTRL_PRESET_VAL_ENABLE;
  else
   ctrl &= ~SDHCI_CTRL_PRESET_VAL_ENABLE;

  sdhci_writew(host, ctrl, SDHCI_HOST_CONTROL2);

  if (enable)
   host->flags |= SDHCI_PV_ENABLED;
  else
   host->flags &= ~SDHCI_PV_ENABLED;

  host->preset_enabled = enable;
 }
}
