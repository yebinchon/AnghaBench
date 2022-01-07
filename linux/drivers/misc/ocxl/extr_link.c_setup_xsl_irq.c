
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa {int irq_name; int virq; } ;
struct pci_dev {int dev; } ;
struct ocxl_link {int dev; int bus; int domain; struct spa* spa; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*,...) ;
 int irq_create_mapping (int *,int) ;
 int irq_dispose_mapping (int ) ;
 int kasprintf (int ,char*,int ,int ,int ) ;
 int kfree (int ) ;
 int map_irq_registers (struct pci_dev*,struct spa*) ;
 int pnv_ocxl_get_xsl_irq (struct pci_dev*,int*) ;
 int request_irq (int ,int ,int ,int ,struct ocxl_link*) ;
 int unmap_irq_registers (struct spa*) ;
 int xsl_fault_handler ;

__attribute__((used)) static int setup_xsl_irq(struct pci_dev *dev, struct ocxl_link *link)
{
 struct spa *spa = link->spa;
 int rc;
 int hwirq;

 rc = pnv_ocxl_get_xsl_irq(dev, &hwirq);
 if (rc)
  return rc;

 rc = map_irq_registers(dev, spa);
 if (rc)
  return rc;

 spa->irq_name = kasprintf(GFP_KERNEL, "ocxl-xsl-%x-%x-%x",
    link->domain, link->bus, link->dev);
 if (!spa->irq_name) {
  dev_err(&dev->dev, "Can't allocate name for xsl interrupt\n");
  rc = -ENOMEM;
  goto err_xsl;
 }




 spa->virq = irq_create_mapping(((void*)0), hwirq);
 if (!spa->virq) {
  dev_err(&dev->dev,
   "irq_create_mapping failed for translation interrupt\n");
  rc = -EINVAL;
  goto err_name;
 }

 dev_dbg(&dev->dev, "hwirq %d mapped to virq %d\n", hwirq, spa->virq);

 rc = request_irq(spa->virq, xsl_fault_handler, 0, spa->irq_name,
   link);
 if (rc) {
  dev_err(&dev->dev,
   "request_irq failed for translation interrupt: %d\n",
   rc);
  rc = -EINVAL;
  goto err_mapping;
 }
 return 0;

err_mapping:
 irq_dispose_mapping(spa->virq);
err_name:
 kfree(spa->irq_name);
err_xsl:
 unmap_irq_registers(spa);
 return rc;
}
