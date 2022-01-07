
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int va; } ;
struct TYPE_3__ {int va; } ;
struct mic_device {int id; TYPE_2__ mmio; TYPE_1__ aper; int cosm_dev; } ;


 int cosm_unregister_device (int ) ;
 int g_mic_ida ;
 int ida_simple_remove (int *,int ) ;
 int iounmap (int ) ;
 int kfree (struct mic_device*) ;
 int mic_delete_debug_dir (struct mic_device*) ;
 int mic_dp_uninit (struct mic_device*) ;
 int mic_free_interrupts (struct mic_device*,struct pci_dev*) ;
 int mic_smpt_uninit (struct mic_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct mic_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void mic_remove(struct pci_dev *pdev)
{
 struct mic_device *mdev;

 mdev = pci_get_drvdata(pdev);
 if (!mdev)
  return;

 cosm_unregister_device(mdev->cosm_dev);
 mic_delete_debug_dir(mdev);
 mic_dp_uninit(mdev);
 mic_smpt_uninit(mdev);
 mic_free_interrupts(mdev, pdev);
 iounmap(mdev->aper.va);
 iounmap(mdev->mmio.va);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 ida_simple_remove(&g_mic_ida, mdev->id);
 kfree(mdev);
}
