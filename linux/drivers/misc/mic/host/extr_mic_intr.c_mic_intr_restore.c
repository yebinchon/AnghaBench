
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int num_vectors; int* mic_msi_map; } ;
struct mic_device {TYPE_1__* intr_ops; TYPE_2__ irq_info; struct pci_dev* pdev; } ;
struct TYPE_3__ {int (* program_msi_to_src_map ) (struct mic_device*,int,int,int) ;} ;


 int BIT (int) ;
 int MIC_NUM_OFFSETS ;
 int pci_dev_msi_enabled (struct pci_dev*) ;
 int stub1 (struct mic_device*,int,int,int) ;

void mic_intr_restore(struct mic_device *mdev)
{
 int entry, offset;
 struct pci_dev *pdev = mdev->pdev;

 if (!pci_dev_msi_enabled(pdev))
  return;

 for (entry = 0; entry < mdev->irq_info.num_vectors; entry++) {
  for (offset = 0; offset < MIC_NUM_OFFSETS; offset++) {
   if (mdev->irq_info.mic_msi_map[entry] & BIT(offset))
    mdev->intr_ops->program_msi_to_src_map(mdev,
     entry, offset, 1);
  }
 }
}
