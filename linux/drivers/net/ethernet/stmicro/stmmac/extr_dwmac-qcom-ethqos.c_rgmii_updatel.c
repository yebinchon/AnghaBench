
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_ethqos {int dummy; } ;


 unsigned int rgmii_readl (struct qcom_ethqos*,unsigned int) ;
 int rgmii_writel (struct qcom_ethqos*,unsigned int,unsigned int) ;

__attribute__((used)) static void rgmii_updatel(struct qcom_ethqos *ethqos,
     int mask, int val, unsigned int offset)
{
 unsigned int temp;

 temp = rgmii_readl(ethqos, offset);
 temp = (temp & ~(mask)) | val;
 rgmii_writel(ethqos, temp, offset);
}
