
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_ethqos {scalar_t__ rgmii_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static int rgmii_readl(struct qcom_ethqos *ethqos, unsigned int offset)
{
 return readl(ethqos->rgmii_base + offset);
}
