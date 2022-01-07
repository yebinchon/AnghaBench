
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pdev_dev; } ;
typedef int cpumask_var_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpumask_local_spread (int,int ) ;
 int cpumask_set_cpu (int ,int ) ;
 int dev_err (int ,char*) ;
 int dev_to_node (int ) ;
 int dev_warn (int ,char*,unsigned short,int) ;
 int irq_set_affinity_hint (unsigned short,int ) ;
 int zalloc_cpumask_var (int *,int ) ;

int cxgb4_set_msix_aff(struct adapter *adap, unsigned short vec,
         cpumask_var_t *aff_mask, int idx)
{
 int rv;

 if (!zalloc_cpumask_var(aff_mask, GFP_KERNEL)) {
  dev_err(adap->pdev_dev, "alloc_cpumask_var failed\n");
  return -ENOMEM;
 }

 cpumask_set_cpu(cpumask_local_spread(idx, dev_to_node(adap->pdev_dev)),
   *aff_mask);

 rv = irq_set_affinity_hint(vec, *aff_mask);
 if (rv)
  dev_warn(adap->pdev_dev,
    "irq_set_affinity_hint %u failed %d\n",
    vec, rv);

 return 0;
}
