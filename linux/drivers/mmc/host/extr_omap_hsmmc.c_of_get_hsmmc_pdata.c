
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_platform_data {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct omap_hsmmc_platform_data* ERR_PTR (int ) ;

__attribute__((used)) static inline struct omap_hsmmc_platform_data
   *of_get_hsmmc_pdata(struct device *dev)
{
 return ERR_PTR(-EINVAL);
}
