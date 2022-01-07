
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int strength; int read_oob; int correct; int calculate; int hwctl; int bytes; int size; int mode; } ;
struct TYPE_3__ {int write_buf; int read_buf; int read_byte; int dev_ready; int waitfunc; int cmd_ctrl; } ;
struct r852_device {int phys_bounce_buffer; int bounce_buffer; int mmio; struct r852_device* tmp_buffer; int card_workqueue; int card_detect_work; scalar_t__ card_detected; int irqlock; int irq; int dma_done; struct pci_dev* pci_dev; struct r852_device* chip; TYPE_2__ ecc; TYPE_1__ legacy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct nand_chip {int phys_bounce_buffer; int bounce_buffer; int mmio; struct nand_chip* tmp_buffer; int card_workqueue; int card_detect_work; scalar_t__ card_detected; int irqlock; int irq; int dma_done; struct pci_dev* pci_dev; struct nand_chip* chip; TYPE_2__ ecc; TYPE_1__ legacy; } ;


 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int NAND_ECC_HW_SYNDROME ;
 int R852_DMA_LEN ;
 int SM_OOB_SIZE ;
 int SM_SECTOR_SIZE ;
 int create_freezable_workqueue (int ) ;
 int destroy_workqueue (int ) ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int dma_set_mask (int *,int ) ;
 int init_completion (int *) ;
 int kfree (struct r852_device*) ;
 void* kzalloc (int,int ) ;
 int nand_set_controller_data (struct r852_device*,struct r852_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct r852_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_notice (char*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int r852_card_detect_work ;
 int r852_card_update_present (struct r852_device*) ;
 int r852_cmdctl ;
 int r852_disable_irqs (struct r852_device*) ;
 int r852_dma_test (struct r852_device*) ;
 int r852_ecc_calculate ;
 int r852_ecc_correct ;
 int r852_ecc_hwctl ;
 int r852_engine_disable (struct r852_device*) ;
 int r852_irq ;
 int r852_read_buf ;
 int r852_read_byte ;
 int r852_read_oob ;
 int r852_ready ;
 int r852_wait ;
 int r852_write_buf ;
 scalar_t__ request_irq (int ,int *,int ,int ,struct r852_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
{
 int error;
 struct nand_chip *chip;
 struct r852_device *dev;


 error = pci_enable_device(pci_dev);

 if (error)
  goto error1;

 pci_set_master(pci_dev);

 error = dma_set_mask(&pci_dev->dev, DMA_BIT_MASK(32));
 if (error)
  goto error2;

 error = pci_request_regions(pci_dev, DRV_NAME);

 if (error)
  goto error3;

 error = -ENOMEM;


 chip = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);

 if (!chip)
  goto error4;


 chip->legacy.cmd_ctrl = r852_cmdctl;
 chip->legacy.waitfunc = r852_wait;
 chip->legacy.dev_ready = r852_ready;


 chip->legacy.read_byte = r852_read_byte;
 chip->legacy.read_buf = r852_read_buf;
 chip->legacy.write_buf = r852_write_buf;


 chip->ecc.mode = NAND_ECC_HW_SYNDROME;
 chip->ecc.size = R852_DMA_LEN;
 chip->ecc.bytes = SM_OOB_SIZE;
 chip->ecc.strength = 2;
 chip->ecc.hwctl = r852_ecc_hwctl;
 chip->ecc.calculate = r852_ecc_calculate;
 chip->ecc.correct = r852_ecc_correct;


 chip->ecc.read_oob = r852_read_oob;


 dev = kzalloc(sizeof(struct r852_device), GFP_KERNEL);

 if (!dev)
  goto error5;

 nand_set_controller_data(chip, dev);
 dev->chip = chip;
 dev->pci_dev = pci_dev;
 pci_set_drvdata(pci_dev, dev);

 dev->bounce_buffer = dma_alloc_coherent(&pci_dev->dev, R852_DMA_LEN,
  &dev->phys_bounce_buffer, GFP_KERNEL);

 if (!dev->bounce_buffer)
  goto error6;


 error = -ENODEV;
 dev->mmio = pci_ioremap_bar(pci_dev, 0);

 if (!dev->mmio)
  goto error7;

 error = -ENOMEM;
 dev->tmp_buffer = kzalloc(SM_SECTOR_SIZE, GFP_KERNEL);

 if (!dev->tmp_buffer)
  goto error8;

 init_completion(&dev->dma_done);

 dev->card_workqueue = create_freezable_workqueue(DRV_NAME);

 if (!dev->card_workqueue)
  goto error9;

 INIT_DELAYED_WORK(&dev->card_detect_work, r852_card_detect_work);


 r852_engine_disable(dev);
 r852_disable_irqs(dev);

 r852_dma_test(dev);

 dev->irq = pci_dev->irq;
 spin_lock_init(&dev->irqlock);

 dev->card_detected = 0;
 r852_card_update_present(dev);


 error = -ENODEV;
 if (request_irq(pci_dev->irq, &r852_irq, IRQF_SHARED,
     DRV_NAME, dev))
  goto error10;


 queue_delayed_work(dev->card_workqueue,
  &dev->card_detect_work, 0);


 pr_notice("driver loaded successfully\n");
 return 0;

error10:
 destroy_workqueue(dev->card_workqueue);
error9:
 kfree(dev->tmp_buffer);
error8:
 pci_iounmap(pci_dev, dev->mmio);
error7:
 dma_free_coherent(&pci_dev->dev, R852_DMA_LEN, dev->bounce_buffer,
     dev->phys_bounce_buffer);
error6:
 kfree(dev);
error5:
 kfree(chip);
error4:
 pci_release_regions(pci_dev);
error3:
error2:
 pci_disable_device(pci_dev);
error1:
 return error;
}
