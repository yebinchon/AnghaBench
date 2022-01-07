
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct pltfm_imx_data {scalar_t__ is_ddr; } ;


 int ESDHC_CTRL_BUSWIDTH_MASK ;
 int ESDHC_CTRL_D3CD ;
 int ESDHC_HOST_CONTROL_LE ;
 scalar_t__ ESDHC_MIX_CTRL ;
 int ESDHC_MIX_CTRL_TUNING_MASK ;
 int const ESDHC_SYSTEM_CONTROL ;
 int SDHCI_CTRL_DMA_MASK ;
 int SDHCI_CTRL_LED ;


 int SDHCI_RESET_ALL ;
 int SDHCI_RESET_DATA ;

 int esdhc_clrset_le (struct sdhci_host*,int,int,int const) ;
 scalar_t__ esdhc_is_usdhc (struct pltfm_imx_data*) ;
 int is_imx25_esdhc (struct pltfm_imx_data*) ;
 int readl (scalar_t__) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void esdhc_writeb_le(struct sdhci_host *host, u8 val, int reg)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);
 u32 new_val = 0;
 u32 mask;

 switch (reg) {
 case 129:




  return;
 case 130:

  new_val = val & SDHCI_CTRL_LED;

  new_val |= ESDHC_HOST_CONTROL_LE;

  if (!is_imx25_esdhc(imx_data)) {

   new_val |= (val & SDHCI_CTRL_DMA_MASK) << 5;
  }







  mask = 0xffff & ~(ESDHC_CTRL_BUSWIDTH_MASK | ESDHC_CTRL_D3CD);

  esdhc_clrset_le(host, mask, new_val, reg);
  return;
 case 128:
  if (val & SDHCI_RESET_DATA)
   new_val = readl(host->ioaddr + 130);
  break;
 }
 esdhc_clrset_le(host, 0xff, val, reg);

 if (reg == 128) {
  if (val & SDHCI_RESET_ALL) {
   esdhc_clrset_le(host, 0x7, 0x7, ESDHC_SYSTEM_CONTROL);




   if (esdhc_is_usdhc(imx_data)) {



    new_val = readl(host->ioaddr + ESDHC_MIX_CTRL);
    writel(new_val & ESDHC_MIX_CTRL_TUNING_MASK,
      host->ioaddr + ESDHC_MIX_CTRL);
    imx_data->is_ddr = 0;
   }
  } else if (val & SDHCI_RESET_DATA) {





   esdhc_clrset_le(host, 0xff, new_val,
     130);
  }
 }
}
