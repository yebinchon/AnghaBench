
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parent; } ;
struct solo_dev {int v4l2_dev; scalar_t__ reg_base; TYPE_1__ dev; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;


 int device_unregister (TYPE_1__*) ;
 int free_irq (int ,struct solo_dev*) ;
 int kfree (struct solo_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int solo_disp_exit (struct solo_dev*) ;
 int solo_enc_exit (struct solo_dev*) ;
 int solo_enc_v4l2_exit (struct solo_dev*) ;
 int solo_g723_exit (struct solo_dev*) ;
 int solo_gpio_exit (struct solo_dev*) ;
 int solo_i2c_exit (struct solo_dev*) ;
 int solo_irq_off (struct solo_dev*,int ) ;
 int solo_p2m_exit (struct solo_dev*) ;
 int solo_v4l2_exit (struct solo_dev*) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void free_solo_dev(struct solo_dev *solo_dev)
{
 struct pci_dev *pdev = solo_dev->pdev;

 if (solo_dev->dev.parent)
  device_unregister(&solo_dev->dev);

 if (solo_dev->reg_base) {

  solo_g723_exit(solo_dev);
  solo_enc_v4l2_exit(solo_dev);
  solo_enc_exit(solo_dev);
  solo_v4l2_exit(solo_dev);
  solo_disp_exit(solo_dev);
  solo_gpio_exit(solo_dev);
  solo_p2m_exit(solo_dev);
  solo_i2c_exit(solo_dev);


  solo_irq_off(solo_dev, ~0);
  free_irq(pdev->irq, solo_dev);
  pci_iounmap(pdev, solo_dev->reg_base);
 }

 pci_release_regions(pdev);
 pci_disable_device(pdev);
 v4l2_device_unregister(&solo_dev->v4l2_dev);
 pci_set_drvdata(pdev, ((void*)0));

 kfree(solo_dev);
}
