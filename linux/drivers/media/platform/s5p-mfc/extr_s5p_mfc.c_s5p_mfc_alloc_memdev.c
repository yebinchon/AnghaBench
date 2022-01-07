
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; int release; int dma_mask; int coherent_dma_mask; struct device* parent; } ;


 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 int dev_set_name (struct device*,char*,int ,char const*) ;
 scalar_t__ device_add (struct device*) ;
 int device_del (struct device*) ;
 int device_initialize (struct device*) ;
 struct device* devm_kzalloc (struct device*,int,int ) ;
 int of_dma_configure (struct device*,int ,int) ;
 int of_reserved_mem_device_init_by_idx (struct device*,int ,unsigned int) ;
 int put_device (struct device*) ;
 int s5p_mfc_memdev_release ;

__attribute__((used)) static struct device *s5p_mfc_alloc_memdev(struct device *dev,
        const char *name, unsigned int idx)
{
 struct device *child;
 int ret;

 child = devm_kzalloc(dev, sizeof(*child), GFP_KERNEL);
 if (!child)
  return ((void*)0);

 device_initialize(child);
 dev_set_name(child, "%s:%s", dev_name(dev), name);
 child->parent = dev;
 child->coherent_dma_mask = dev->coherent_dma_mask;
 child->dma_mask = dev->dma_mask;
 child->release = s5p_mfc_memdev_release;






 of_dma_configure(child, dev->of_node, 1);

 if (device_add(child) == 0) {
  ret = of_reserved_mem_device_init_by_idx(child, dev->of_node,
        idx);
  if (ret == 0)
   return child;
  device_del(child);
 }

 put_device(child);
 return ((void*)0);
}
