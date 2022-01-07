
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msix_entry {int entry; int vector; } ;
struct TYPE_3__ {scalar_t__ nports; } ;
struct adapter {int msix_nvectors; TYPE_2__* msix_info; TYPE_1__ params; int pdev; } ;
struct TYPE_4__ {int vec; } ;


 int ARRAY_SIZE (struct msix_entry*) ;
 int SGE_QSETS ;
 int pci_enable_msix_range (int ,struct msix_entry*,scalar_t__,int) ;

__attribute__((used)) static int cxgb_enable_msix(struct adapter *adap)
{
 struct msix_entry entries[SGE_QSETS + 1];
 int vectors;
 int i;

 vectors = ARRAY_SIZE(entries);
 for (i = 0; i < vectors; ++i)
  entries[i].entry = i;

 vectors = pci_enable_msix_range(adap->pdev, entries,
     adap->params.nports + 1, vectors);
 if (vectors < 0)
  return vectors;

 for (i = 0; i < vectors; ++i)
  adap->msix_info[i].vec = entries[i].vector;
 adap->msix_nvectors = vectors;

 return 0;
}
