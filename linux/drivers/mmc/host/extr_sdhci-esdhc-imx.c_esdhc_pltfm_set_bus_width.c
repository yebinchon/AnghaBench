
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int ESDHC_CTRL_4BITBUS ;
 int ESDHC_CTRL_8BITBUS ;
 int ESDHC_CTRL_BUSWIDTH_MASK ;


 int SDHCI_HOST_CONTROL ;
 int esdhc_clrset_le (struct sdhci_host*,int ,int ,int ) ;

__attribute__((used)) static void esdhc_pltfm_set_bus_width(struct sdhci_host *host, int width)
{
 u32 ctrl;

 switch (width) {
 case 128:
  ctrl = ESDHC_CTRL_8BITBUS;
  break;
 case 129:
  ctrl = ESDHC_CTRL_4BITBUS;
  break;
 default:
  ctrl = 0;
  break;
 }

 esdhc_clrset_le(host, ESDHC_CTRL_BUSWIDTH_MASK, ctrl,
   SDHCI_HOST_CONTROL);
}
