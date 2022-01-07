
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_mfd {int * regmap; int * regs; int lock; } ;
struct resource {int start; } ;
struct regmap_config {int cache_type; int * lock_arg; } ;
struct platform_device {int dev; } ;
struct pci_dev {int dummy; } ;
typedef enum sta2x11_mfd_plat_dev { ____Placeholder_sta2x11_mfd_plat_dev } sta2x11_mfd_plat_dev ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IS_ERR (int ) ;
 int REGCACHE_NONE ;
 int WARN_ON (int ) ;
 struct pci_dev** dev_get_platdata (int *) ;
 int devm_regmap_init_mmio (int *,int ,struct regmap_config*) ;
 int ioremap (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,char const*) ;
 int resource_size (struct resource*) ;
 struct sta2x11_mfd* sta2x11_mfd_find (struct pci_dev*) ;
 char** sta2x11_mfd_names ;
 struct regmap_config** sta2x11_mfd_regmap_configs ;

__attribute__((used)) static int sta2x11_mfd_platform_probe(struct platform_device *dev,
          enum sta2x11_mfd_plat_dev index)
{
 struct pci_dev **pdev;
 struct sta2x11_mfd *mfd;
 struct resource *res;
 const char *name = sta2x11_mfd_names[index];
 struct regmap_config *regmap_config = sta2x11_mfd_regmap_configs[index];

 pdev = dev_get_platdata(&dev->dev);
 mfd = sta2x11_mfd_find(*pdev);
 if (!mfd)
  return -ENODEV;
 if (!regmap_config)
  return -ENODEV;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENOMEM;

 if (!request_mem_region(res->start, resource_size(res), name))
  return -EBUSY;

 mfd->regs[index] = ioremap(res->start, resource_size(res));
 if (!mfd->regs[index]) {
  release_mem_region(res->start, resource_size(res));
  return -ENOMEM;
 }
 regmap_config->lock_arg = &mfd->lock;




 regmap_config->cache_type = REGCACHE_NONE;
 mfd->regmap[index] = devm_regmap_init_mmio(&dev->dev, mfd->regs[index],
         regmap_config);
 WARN_ON(IS_ERR(mfd->regmap[index]));

 return 0;
}
