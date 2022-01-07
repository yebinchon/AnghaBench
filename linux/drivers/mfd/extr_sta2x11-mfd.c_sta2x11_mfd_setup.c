
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta2x11_mfd_setup_data {TYPE_2__* bars; } ;
struct pci_dev {int dummy; } ;
typedef int pdev ;
struct TYPE_4__ {int ncells; TYPE_1__* cells; } ;
struct TYPE_3__ {int pdata_size; struct pci_dev** platform_data; } ;


 int ARRAY_SIZE (TYPE_2__*) ;

__attribute__((used)) static void sta2x11_mfd_setup(struct pci_dev *pdev,
         struct sta2x11_mfd_setup_data *sd)
{
 int i, j;
 for (i = 0; i < ARRAY_SIZE(sd->bars); i++)
  for (j = 0; j < sd->bars[i].ncells; j++) {
   sd->bars[i].cells[j].pdata_size = sizeof(pdev);
   sd->bars[i].cells[j].platform_data = &pdev;
  }
}
