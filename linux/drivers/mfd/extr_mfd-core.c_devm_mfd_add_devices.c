
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_mfd_dev_release ;
 int devres_add (struct device*,struct device**) ;
 struct device** devres_alloc (int ,int,int ) ;
 int devres_free (struct device**) ;
 int mfd_add_devices (struct device*,int,struct mfd_cell const*,int,struct resource*,int,struct irq_domain*) ;

int devm_mfd_add_devices(struct device *dev, int id,
    const struct mfd_cell *cells, int n_devs,
    struct resource *mem_base,
    int irq_base, struct irq_domain *domain)
{
 struct device **ptr;
 int ret;

 ptr = devres_alloc(devm_mfd_dev_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = mfd_add_devices(dev, id, cells, n_devs, mem_base,
         irq_base, domain);
 if (ret < 0) {
  devres_free(ptr);
  return ret;
 }

 *ptr = dev;
 devres_add(dev, ptr);

 return ret;
}
