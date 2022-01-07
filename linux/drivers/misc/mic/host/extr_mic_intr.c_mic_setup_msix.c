
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_7__ {int num_vectors; TYPE_3__* msix_entries; int mic_msi_map; } ;
struct mic_device {TYPE_2__ irq_info; TYPE_1__* pdev; } ;
struct TYPE_8__ {int entry; } ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MIC_MIN_MSIX ;
 int dev_dbg (int *,char*,int) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kmalloc_array (int,int,int ) ;
 int kzalloc (int,int ) ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_enable_msix_exact (struct pci_dev*,TYPE_3__*,int) ;

__attribute__((used)) static int mic_setup_msix(struct mic_device *mdev, struct pci_dev *pdev)
{
 int rc, i;
 int entry_size = sizeof(*mdev->irq_info.msix_entries);

 mdev->irq_info.msix_entries = kmalloc_array(MIC_MIN_MSIX,
          entry_size, GFP_KERNEL);
 if (!mdev->irq_info.msix_entries) {
  rc = -ENOMEM;
  goto err_nomem1;
 }

 for (i = 0; i < MIC_MIN_MSIX; i++)
  mdev->irq_info.msix_entries[i].entry = i;

 rc = pci_enable_msix_exact(pdev, mdev->irq_info.msix_entries,
       MIC_MIN_MSIX);
 if (rc) {
  dev_dbg(&pdev->dev, "Error enabling MSIx. rc = %d\n", rc);
  goto err_enable_msix;
 }

 mdev->irq_info.num_vectors = MIC_MIN_MSIX;
 mdev->irq_info.mic_msi_map = kzalloc((sizeof(u32) *
  mdev->irq_info.num_vectors), GFP_KERNEL);

 if (!mdev->irq_info.mic_msi_map) {
  rc = -ENOMEM;
  goto err_nomem2;
 }

 dev_dbg(&mdev->pdev->dev,
  "%d MSIx irqs setup\n", mdev->irq_info.num_vectors);
 return 0;
err_nomem2:
 pci_disable_msix(pdev);
err_enable_msix:
 kfree(mdev->irq_info.msix_entries);
err_nomem1:
 mdev->irq_info.num_vectors = 0;
 return rc;
}
