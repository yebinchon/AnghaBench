
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ end; scalar_t__ start; TYPE_1__* parent; void* flags; } ;
struct pci_dev {TYPE_1__* resource; } ;
struct mfd_cell {char* name; int num_resources; int pdata_size; struct janz_platform_data* platform_data; scalar_t__ id; struct resource* resources; } ;
struct janz_platform_data {unsigned int modno; } ;
struct cmodio_device {struct janz_platform_data* pdata; struct resource* resources; struct mfd_cell* cells; struct pci_dev* pdev; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;


 unsigned int CMODIO_MODULBUS_SIZE ;
 void* IORESOURCE_IRQ ;
 void* IORESOURCE_MEM ;
 int cmodio_id ;

__attribute__((used)) static int cmodio_setup_subdevice(struct cmodio_device *priv,
         char *name, unsigned int devno,
         unsigned int modno)
{
 struct janz_platform_data *pdata;
 struct mfd_cell *cell;
 struct resource *res;
 struct pci_dev *pci;

 pci = priv->pdev;
 cell = &priv->cells[devno];
 res = &priv->resources[devno * 3];
 pdata = &priv->pdata[devno];

 cell->name = name;
 cell->resources = res;
 cell->num_resources = 3;


 cell->id = cmodio_id++;


 pdata->modno = modno;
 cell->platform_data = pdata;
 cell->pdata_size = sizeof(*pdata);


 res->flags = IORESOURCE_MEM;
 res->parent = &pci->resource[3];
 res->start = pci->resource[3].start + (CMODIO_MODULBUS_SIZE * modno);
 res->end = res->start + CMODIO_MODULBUS_SIZE - 1;
 res++;


 res->flags = IORESOURCE_MEM;
 res->parent = &pci->resource[4];
 res->start = pci->resource[4].start;
 res->end = pci->resource[4].end;
 res++;
 res->flags = IORESOURCE_IRQ;
 res->parent = ((void*)0);
 res->start = 0;
 res->end = 0;
 res++;

 return 0;
}
