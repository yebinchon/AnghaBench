
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_2__* bus; } ;
struct ocxl_link {int platform_data; TYPE_1__* spa; int irq_available; int dev; int bus; int domain; int ref; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int spa_mem; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_IRQ_PER_LINK ;
 int PCI_SLOT (int ) ;
 int alloc_spa (struct pci_dev*,struct ocxl_link*) ;
 int atomic_set (int *,int ) ;
 int free_spa (struct ocxl_link*) ;
 int kfree (struct ocxl_link*) ;
 int kref_init (int *) ;
 struct ocxl_link* kzalloc (int,int ) ;
 int pci_domain_nr (TYPE_2__*) ;
 int pnv_ocxl_spa_setup (struct pci_dev*,int ,int,int *) ;
 int release_xsl_irq (struct ocxl_link*) ;
 int setup_xsl_irq (struct pci_dev*,struct ocxl_link*) ;

__attribute__((used)) static int alloc_link(struct pci_dev *dev, int PE_mask, struct ocxl_link **out_link)
{
 struct ocxl_link *link;
 int rc;

 link = kzalloc(sizeof(struct ocxl_link), GFP_KERNEL);
 if (!link)
  return -ENOMEM;

 kref_init(&link->ref);
 link->domain = pci_domain_nr(dev->bus);
 link->bus = dev->bus->number;
 link->dev = PCI_SLOT(dev->devfn);
 atomic_set(&link->irq_available, MAX_IRQ_PER_LINK);

 rc = alloc_spa(dev, link);
 if (rc)
  goto err_free;

 rc = setup_xsl_irq(dev, link);
 if (rc)
  goto err_spa;


 rc = pnv_ocxl_spa_setup(dev, link->spa->spa_mem, PE_mask,
    &link->platform_data);
 if (rc)
  goto err_xsl_irq;

 *out_link = link;
 return 0;

err_xsl_irq:
 release_xsl_irq(link);
err_spa:
 free_spa(link);
err_free:
 kfree(link);
 return rc;
}
