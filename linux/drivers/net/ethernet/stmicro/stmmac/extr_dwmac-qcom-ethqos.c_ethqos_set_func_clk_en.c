
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_ethqos {int dummy; } ;


 int RGMII_CONFIG_FUNC_CLK_EN ;
 int RGMII_IO_MACRO_CONFIG ;
 int rgmii_updatel (struct qcom_ethqos*,int ,int ,int ) ;

__attribute__((used)) static void ethqos_set_func_clk_en(struct qcom_ethqos *ethqos)
{
 rgmii_updatel(ethqos, RGMII_CONFIG_FUNC_CLK_EN,
        RGMII_CONFIG_FUNC_CLK_EN, RGMII_IO_MACRO_CONFIG);
}
