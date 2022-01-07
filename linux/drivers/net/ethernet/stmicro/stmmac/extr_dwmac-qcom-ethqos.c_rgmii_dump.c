
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_ethqos {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EMAC_SYSTEM_LOW_POWER_DEBUG ;
 int RGMII_IO_MACRO_CONFIG ;
 int RGMII_IO_MACRO_CONFIG2 ;
 int RGMII_IO_MACRO_DEBUG1 ;
 int SDC4_STATUS ;
 int SDCC_HC_REG_DDR_CONFIG ;
 int SDCC_HC_REG_DLL_CONFIG ;
 int SDCC_HC_REG_DLL_CONFIG2 ;
 int SDCC_USR_CTL ;
 int dev_dbg (int *,char*,...) ;
 int rgmii_readl (struct qcom_ethqos*,int ) ;

__attribute__((used)) static void rgmii_dump(struct qcom_ethqos *ethqos)
{
 dev_dbg(&ethqos->pdev->dev, "Rgmii register dump\n");
 dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_CONFIG: %x\n",
  rgmii_readl(ethqos, RGMII_IO_MACRO_CONFIG));
 dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DLL_CONFIG: %x\n",
  rgmii_readl(ethqos, SDCC_HC_REG_DLL_CONFIG));
 dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DDR_CONFIG: %x\n",
  rgmii_readl(ethqos, SDCC_HC_REG_DDR_CONFIG));
 dev_dbg(&ethqos->pdev->dev, "SDCC_HC_REG_DLL_CONFIG2: %x\n",
  rgmii_readl(ethqos, SDCC_HC_REG_DLL_CONFIG2));
 dev_dbg(&ethqos->pdev->dev, "SDC4_STATUS: %x\n",
  rgmii_readl(ethqos, SDC4_STATUS));
 dev_dbg(&ethqos->pdev->dev, "SDCC_USR_CTL: %x\n",
  rgmii_readl(ethqos, SDCC_USR_CTL));
 dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_CONFIG2: %x\n",
  rgmii_readl(ethqos, RGMII_IO_MACRO_CONFIG2));
 dev_dbg(&ethqos->pdev->dev, "RGMII_IO_MACRO_DEBUG1: %x\n",
  rgmii_readl(ethqos, RGMII_IO_MACRO_DEBUG1));
 dev_dbg(&ethqos->pdev->dev, "EMAC_SYSTEM_LOW_POWER_DEBUG: %x\n",
  rgmii_readl(ethqos, EMAC_SYSTEM_LOW_POWER_DEBUG));
}
