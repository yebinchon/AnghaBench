
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_ethqos {scalar_t__ rgmii_base; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static void rgmii_writel(struct qcom_ethqos *ethqos,
    int value, unsigned int offset)
{
 writel(value, ethqos->rgmii_base + offset);
}
