
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rocker {TYPE_1__* msix_entries; int port_count; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct msix_entry {int dummy; } ;
struct TYPE_3__ {int entry; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ROCKER_MSIX_VEC_COUNT (int ) ;
 int kfree (TYPE_1__*) ;
 int kmalloc_array (int,int,int ) ;
 int pci_enable_msix_exact (struct pci_dev*,TYPE_1__*,int) ;
 int pci_msix_vec_count (struct pci_dev*) ;

__attribute__((used)) static int rocker_msix_init(struct rocker *rocker)
{
 struct pci_dev *pdev = rocker->pdev;
 int msix_entries;
 int i;
 int err;

 msix_entries = pci_msix_vec_count(pdev);
 if (msix_entries < 0)
  return msix_entries;

 if (msix_entries != ROCKER_MSIX_VEC_COUNT(rocker->port_count))
  return -EINVAL;

 rocker->msix_entries = kmalloc_array(msix_entries,
          sizeof(struct msix_entry),
          GFP_KERNEL);
 if (!rocker->msix_entries)
  return -ENOMEM;

 for (i = 0; i < msix_entries; i++)
  rocker->msix_entries[i].entry = i;

 err = pci_enable_msix_exact(pdev, rocker->msix_entries, msix_entries);
 if (err < 0)
  goto err_enable_msix;

 return 0;

err_enable_msix:
 kfree(rocker->msix_entries);
 return err;
}
