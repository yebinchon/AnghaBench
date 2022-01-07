
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qcom_ethqos {unsigned int num_por; scalar_t__ speed; TYPE_2__* pdev; TYPE_1__* por; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int offset; int value; } ;


 int BIT (int) ;
 int GENMASK (int,int) ;
 int SDC4_STATUS ;
 unsigned int volatile SDC4_STATUS_DLL_LOCK ;
 int SDCC_DLL_CONFIG_CK_OUT_EN ;
 int SDCC_DLL_CONFIG_DLL_EN ;
 int SDCC_DLL_CONFIG_DLL_RST ;
 int SDCC_DLL_CONFIG_PDN ;
 int SDCC_HC_REG_DLL_CONFIG ;
 int SDCC_USR_CTL ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int dev_err (int *,char*) ;
 int ethqos_dll_configure (struct qcom_ethqos*) ;
 int ethqos_rgmii_macro_init (struct qcom_ethqos*) ;
 int ethqos_set_func_clk_en (struct qcom_ethqos*) ;
 int mdelay (int) ;
 unsigned int rgmii_readl (struct qcom_ethqos*,int ) ;
 int rgmii_updatel (struct qcom_ethqos*,int ,int ,int ) ;
 int rgmii_writel (struct qcom_ethqos*,int ,int ) ;

__attribute__((used)) static int ethqos_configure(struct qcom_ethqos *ethqos)
{
 volatile unsigned int dll_lock;
 unsigned int i, retry = 1000;


 for (i = 0; i < ethqos->num_por; i++)
  rgmii_writel(ethqos, ethqos->por[i].value,
        ethqos->por[i].offset);
 ethqos_set_func_clk_en(ethqos);




 rgmii_updatel(ethqos, SDCC_DLL_CONFIG_DLL_RST,
        SDCC_DLL_CONFIG_DLL_RST, SDCC_HC_REG_DLL_CONFIG);


 rgmii_updatel(ethqos, SDCC_DLL_CONFIG_PDN,
        SDCC_DLL_CONFIG_PDN, SDCC_HC_REG_DLL_CONFIG);


 rgmii_updatel(ethqos, SDCC_DLL_CONFIG_DLL_RST, 0,
        SDCC_HC_REG_DLL_CONFIG);


 rgmii_updatel(ethqos, SDCC_DLL_CONFIG_PDN, 0,
        SDCC_HC_REG_DLL_CONFIG);

 if (ethqos->speed != SPEED_100 && ethqos->speed != SPEED_10) {

  rgmii_updatel(ethqos, SDCC_DLL_CONFIG_DLL_EN,
         SDCC_DLL_CONFIG_DLL_EN, SDCC_HC_REG_DLL_CONFIG);


  rgmii_updatel(ethqos, SDCC_DLL_CONFIG_CK_OUT_EN,
         SDCC_DLL_CONFIG_CK_OUT_EN,
         SDCC_HC_REG_DLL_CONFIG);


  rgmii_updatel(ethqos, GENMASK(26, 24), BIT(26), SDCC_USR_CTL);


  do {
   mdelay(1);
   dll_lock = rgmii_readl(ethqos, SDC4_STATUS);
   if (dll_lock & SDC4_STATUS_DLL_LOCK)
    break;
  } while (retry > 0);
  if (!retry)
   dev_err(&ethqos->pdev->dev,
    "Timeout while waiting for DLL lock\n");
 }

 if (ethqos->speed == SPEED_1000)
  ethqos_dll_configure(ethqos);

 ethqos_rgmii_macro_init(ethqos);

 return 0;
}
