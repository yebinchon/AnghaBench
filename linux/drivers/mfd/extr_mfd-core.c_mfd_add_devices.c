
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
typedef int atomic_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int mfd_add_device (struct device*,int,struct mfd_cell const*,int *,struct resource*,int,struct irq_domain*) ;
 int mfd_remove_devices (struct device*) ;

int mfd_add_devices(struct device *parent, int id,
      const struct mfd_cell *cells, int n_devs,
      struct resource *mem_base,
      int irq_base, struct irq_domain *domain)
{
 int i;
 int ret;
 atomic_t *cnts;


 cnts = kcalloc(n_devs, sizeof(*cnts), GFP_KERNEL);
 if (!cnts)
  return -ENOMEM;

 for (i = 0; i < n_devs; i++) {
  atomic_set(&cnts[i], 0);
  ret = mfd_add_device(parent, id, cells + i, cnts + i, mem_base,
         irq_base, domain);
  if (ret)
   goto fail;
 }

 return 0;

fail:
 if (i)
  mfd_remove_devices(parent);
 else
  kfree(cnts);
 return ret;
}
