
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int dummy; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int EIO ;
 int HZ ;
 int ROCKER_MSIX_VEC_TEST ;
 int TEST_IRQ ;
 int dev_err (int *,char*) ;
 int free_irq (int ,struct rocker_wait*) ;
 int request_irq (int ,int ,int ,int ,struct rocker_wait*) ;
 int rocker_dma_test (struct rocker const*,struct rocker_wait*) ;
 int rocker_driver_name ;
 int rocker_msix_vector (struct rocker const*,int ) ;
 int rocker_reg_test (struct rocker const*) ;
 int rocker_test_irq_handler ;
 int rocker_wait_event_timeout (struct rocker_wait*,int) ;
 int rocker_wait_init (struct rocker_wait*) ;
 int rocker_write32 (struct rocker const*,int ,int ) ;

__attribute__((used)) static int rocker_basic_hw_test(const struct rocker *rocker)
{
 const struct pci_dev *pdev = rocker->pdev;
 struct rocker_wait wait;
 int err;

 err = rocker_reg_test(rocker);
 if (err) {
  dev_err(&pdev->dev, "reg test failed\n");
  return err;
 }

 err = request_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_TEST),
     rocker_test_irq_handler, 0,
     rocker_driver_name, &wait);
 if (err) {
  dev_err(&pdev->dev, "cannot assign test irq\n");
  return err;
 }

 rocker_wait_init(&wait);
 rocker_write32(rocker, TEST_IRQ, ROCKER_MSIX_VEC_TEST);

 if (!rocker_wait_event_timeout(&wait, HZ / 10)) {
  dev_err(&pdev->dev, "no interrupt received within a timeout\n");
  err = -EIO;
  goto free_irq;
 }

 err = rocker_dma_test(rocker, &wait);
 if (err)
  dev_err(&pdev->dev, "dma test failed\n");

free_irq:
 free_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_TEST), &wait);
 return err;
}
