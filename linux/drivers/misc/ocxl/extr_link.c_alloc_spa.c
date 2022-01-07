
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fault_work; } ;
struct spa {struct ocxl_process_element* spa_mem; scalar_t__ spa_order; TYPE_1__ xsl_fault; int pe_tree; int spa_lock; } ;
struct pci_dev {int dev; } ;
struct ocxl_process_element {int dummy; } ;
struct ocxl_link {struct spa* spa; int dev; int bus; int domain; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_RADIX_TREE (int *,int) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ SPA_SPA_SIZE_LOG ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,scalar_t__) ;
 int dev_err (int *,char*) ;
 int kfree (struct spa*) ;
 struct spa* kzalloc (int,int) ;
 int mutex_init (int *) ;
 int pr_debug (char*,int ,int ,int ,struct ocxl_process_element*) ;
 int xsl_fault_handler_bh ;

__attribute__((used)) static int alloc_spa(struct pci_dev *dev, struct ocxl_link *link)
{
 struct spa *spa;

 spa = kzalloc(sizeof(struct spa), GFP_KERNEL);
 if (!spa)
  return -ENOMEM;

 mutex_init(&spa->spa_lock);
 INIT_RADIX_TREE(&spa->pe_tree, GFP_KERNEL);
 INIT_WORK(&spa->xsl_fault.fault_work, xsl_fault_handler_bh);

 spa->spa_order = SPA_SPA_SIZE_LOG - PAGE_SHIFT;
 spa->spa_mem = (struct ocxl_process_element *)
  __get_free_pages(GFP_KERNEL | __GFP_ZERO, spa->spa_order);
 if (!spa->spa_mem) {
  dev_err(&dev->dev, "Can't allocate Shared Process Area\n");
  kfree(spa);
  return -ENOMEM;
 }
 pr_debug("Allocated SPA for %x:%x:%x at %p\n", link->domain, link->bus,
  link->dev, spa->spa_mem);

 link->spa = spa;
 return 0;
}
