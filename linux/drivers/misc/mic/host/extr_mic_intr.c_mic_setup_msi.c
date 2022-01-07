
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; int irq; } ;
struct TYPE_2__ {int num_vectors; int mic_msi_map; } ;
struct mic_device {TYPE_1__ irq_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int mic_interrupt ;
 int mic_release_callbacks (struct mic_device*) ;
 int mic_setup_callbacks (struct mic_device*) ;
 int mic_thread_fn ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int request_threaded_irq (int ,int ,int ,int ,char*,struct mic_device*) ;

__attribute__((used)) static int mic_setup_msi(struct mic_device *mdev, struct pci_dev *pdev)
{
 int rc;

 rc = pci_enable_msi(pdev);
 if (rc) {
  dev_dbg(&pdev->dev, "Error enabling MSI. rc = %d\n", rc);
  return rc;
 }

 mdev->irq_info.num_vectors = 1;
 mdev->irq_info.mic_msi_map = kzalloc((sizeof(u32) *
  mdev->irq_info.num_vectors), GFP_KERNEL);

 if (!mdev->irq_info.mic_msi_map) {
  rc = -ENOMEM;
  goto err_nomem1;
 }

 rc = mic_setup_callbacks(mdev);
 if (rc) {
  dev_err(&pdev->dev, "Error setting up callbacks\n");
  goto err_nomem2;
 }

 rc = request_threaded_irq(pdev->irq, mic_interrupt, mic_thread_fn,
      0, "mic-msi", mdev);
 if (rc) {
  dev_err(&pdev->dev, "Error allocating MSI interrupt\n");
  goto err_irq_req_fail;
 }

 dev_dbg(&pdev->dev, "%d MSI irqs setup\n", mdev->irq_info.num_vectors);
 return 0;
err_irq_req_fail:
 mic_release_callbacks(mdev);
err_nomem2:
 kfree(mdev->irq_info.mic_msi_map);
err_nomem1:
 pci_disable_msi(pdev);
 mdev->irq_info.num_vectors = 0;
 return rc;
}
