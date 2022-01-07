
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int spear_smi_probe_config_dt(struct platform_device *pdev,
         struct device_node *np)
{
 return -ENOSYS;
}
