
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int irq; } ;
struct mic_device {int dummy; } ;


 int IRQF_SHARED ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int mic_interrupt ;
 int mic_release_callbacks (struct mic_device*) ;
 int mic_setup_callbacks (struct mic_device*) ;
 int mic_thread_fn ;
 int pci_intx (struct pci_dev*,int) ;
 int request_threaded_irq (int ,int ,int ,int ,char*,struct mic_device*) ;

__attribute__((used)) static int mic_setup_intx(struct mic_device *mdev, struct pci_dev *pdev)
{
 int rc;


 pci_intx(pdev, 1);
 rc = mic_setup_callbacks(mdev);
 if (rc) {
  dev_err(&pdev->dev, "Error setting up callbacks\n");
  goto err_nomem;
 }

 rc = request_threaded_irq(pdev->irq, mic_interrupt, mic_thread_fn,
      IRQF_SHARED, "mic-intx", mdev);
 if (rc)
  goto err;

 dev_dbg(&pdev->dev, "intx irq setup\n");
 return 0;
err:
 mic_release_callbacks(mdev);
err_nomem:
 return rc;
}
