
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mci_exynos_priv_data {scalar_t__ ctrl_type; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;


 scalar_t__ DW_MCI_TYPE_EXYNOS5420_SMU ;
 scalar_t__ DW_MCI_TYPE_EXYNOS7_SMU ;
 int MPSBEGIN0 ;
 int MPSCTRL0 ;
 int MPSEND0 ;
 int SDMMC_ENDING_SEC_NR_MAX ;
 int SDMMC_MPSCTRL_NON_SECURE_READ_BIT ;
 int SDMMC_MPSCTRL_NON_SECURE_WRITE_BIT ;
 int SDMMC_MPSCTRL_SECURE_WRITE_BIT ;
 int SDMMC_MPSCTRL_VALID ;
 int mci_writel (struct dw_mci*,int ,int) ;

__attribute__((used)) static void dw_mci_exynos_config_smu(struct dw_mci *host)
{
 struct dw_mci_exynos_priv_data *priv = host->priv;





 if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS5420_SMU ||
  priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU) {
  mci_writel(host, MPSBEGIN0, 0);
  mci_writel(host, MPSEND0, SDMMC_ENDING_SEC_NR_MAX);
  mci_writel(host, MPSCTRL0, SDMMC_MPSCTRL_SECURE_WRITE_BIT |
      SDMMC_MPSCTRL_NON_SECURE_READ_BIT |
      SDMMC_MPSCTRL_VALID |
      SDMMC_MPSCTRL_NON_SECURE_WRITE_BIT);
 }
}
