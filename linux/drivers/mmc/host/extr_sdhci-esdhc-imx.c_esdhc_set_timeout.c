
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct pltfm_imx_data {int dummy; } ;
struct mmc_command {int dummy; } ;


 int ESDHC_SYS_CTRL_DTOCV_MASK ;
 int SDHCI_TIMEOUT_CONTROL ;
 int esdhc_clrset_le (struct sdhci_host*,int ,int,int ) ;
 scalar_t__ esdhc_is_usdhc (struct pltfm_imx_data*) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void esdhc_set_timeout(struct sdhci_host *host, struct mmc_command *cmd)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);


 esdhc_clrset_le(host, ESDHC_SYS_CTRL_DTOCV_MASK,
   esdhc_is_usdhc(imx_data) ? 0xF : 0xE,
   SDHCI_TIMEOUT_CONTROL);
}
