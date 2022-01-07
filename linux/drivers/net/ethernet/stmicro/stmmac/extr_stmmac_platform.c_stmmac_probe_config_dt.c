
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct plat_stmmacenet_data {int dummy; } ;


 int EINVAL ;
 struct plat_stmmacenet_data* ERR_PTR (int ) ;

struct plat_stmmacenet_data *
stmmac_probe_config_dt(struct platform_device *pdev, const char **mac)
{
 return ERR_PTR(-EINVAL);
}
