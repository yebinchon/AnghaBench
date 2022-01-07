
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freq; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;
struct sja1000_priv {int * reg_base; int cdr; int ocr; TYPE_2__ can; int post_irq; int write_reg; int read_reg; int irq_flags; struct ems_pci_card* priv; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ vendor; int dev; int irq; } ;
struct net_device {int dev_id; int irq; } ;
struct ems_pci_card {int version; scalar_t__ channels; int * conf_addr; int * base_addr; struct net_device** net_dev; struct pci_dev* pci_dev; } ;


 int EMS_PCI_BASE_SIZE ;
 int EMS_PCI_CAN_BASE_OFFSET ;
 int EMS_PCI_CAN_CLOCK ;
 int EMS_PCI_CAN_CTRL_SIZE ;
 int EMS_PCI_CDR ;
 int EMS_PCI_OCR ;
 int EMS_PCI_V1_BASE_BAR ;
 int EMS_PCI_V1_CONF_SIZE ;
 int EMS_PCI_V1_MAX_CHAN ;
 int EMS_PCI_V2_BASE_BAR ;
 int EMS_PCI_V2_CONF_SIZE ;
 int EMS_PCI_V2_MAX_CHAN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ PCI_VENDOR_ID_PLX ;
 int PITA2_ICR ;
 int PITA2_ICR_INT0 ;
 int PITA2_ICR_INT0_EN ;
 int PITA2_MISC ;
 int PITA2_MISC_CONFIG ;
 int PLX_ICSR ;
 int PLX_ICSR_ENA_CLR ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_sja1000dev (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int *,int ) ;
 int ems_pci_card_reset (struct ems_pci_card*) ;
 scalar_t__ ems_pci_check_chan (struct sja1000_priv*) ;
 int ems_pci_del_card (struct pci_dev*) ;
 int ems_pci_v1_post_irq ;
 int ems_pci_v1_read_reg ;
 int ems_pci_v1_readb (struct ems_pci_card*,int) ;
 int ems_pci_v1_write_reg ;
 int ems_pci_v2_post_irq ;
 int ems_pci_v2_read_reg ;
 int ems_pci_v2_write_reg ;
 int free_sja1000dev (struct net_device*) ;
 struct ems_pci_card* kzalloc (int,int ) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 void* pci_iomap (struct pci_dev*,int,int) ;
 int pci_set_drvdata (struct pci_dev*,struct ems_pci_card*) ;
 int register_sja1000dev (struct net_device*) ;
 int writel (int,int *) ;

__attribute__((used)) static int ems_pci_add_card(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 struct sja1000_priv *priv;
 struct net_device *dev;
 struct ems_pci_card *card;
 int max_chan, conf_size, base_bar;
 int err, i;


 if (pci_enable_device(pdev) < 0) {
  dev_err(&pdev->dev, "Enabling PCI device failed\n");
  return -ENODEV;
 }


 card = kzalloc(sizeof(struct ems_pci_card), GFP_KERNEL);
 if (card == ((void*)0)) {
  pci_disable_device(pdev);
  return -ENOMEM;
 }

 pci_set_drvdata(pdev, card);

 card->pci_dev = pdev;

 card->channels = 0;

 if (pdev->vendor == PCI_VENDOR_ID_PLX) {
  card->version = 2;
  max_chan = EMS_PCI_V2_MAX_CHAN;
  base_bar = EMS_PCI_V2_BASE_BAR;
  conf_size = EMS_PCI_V2_CONF_SIZE;
 } else {
  card->version = 1;
  max_chan = EMS_PCI_V1_MAX_CHAN;
  base_bar = EMS_PCI_V1_BASE_BAR;
  conf_size = EMS_PCI_V1_CONF_SIZE;
 }


 card->conf_addr = pci_iomap(pdev, 0, conf_size);
 if (card->conf_addr == ((void*)0)) {
  err = -ENOMEM;
  goto failure_cleanup;
 }

 card->base_addr = pci_iomap(pdev, base_bar, EMS_PCI_BASE_SIZE);
 if (card->base_addr == ((void*)0)) {
  err = -ENOMEM;
  goto failure_cleanup;
 }

 if (card->version == 1) {

  writel(PITA2_MISC_CONFIG, card->conf_addr + PITA2_MISC);


  if (ems_pci_v1_readb(card, 0) != 0x55 ||
      ems_pci_v1_readb(card, 1) != 0xAA ||
      ems_pci_v1_readb(card, 2) != 0x01 ||
      ems_pci_v1_readb(card, 3) != 0xCB ||
      ems_pci_v1_readb(card, 4) != 0x11) {
   dev_err(&pdev->dev,
    "Not EMS Dr. Thomas Wuensche interface\n");
   err = -ENODEV;
   goto failure_cleanup;
  }
 }

 ems_pci_card_reset(card);


 for (i = 0; i < max_chan; i++) {
  dev = alloc_sja1000dev(0);
  if (dev == ((void*)0)) {
   err = -ENOMEM;
   goto failure_cleanup;
  }

  card->net_dev[i] = dev;
  priv = netdev_priv(dev);
  priv->priv = card;
  priv->irq_flags = IRQF_SHARED;

  dev->irq = pdev->irq;
  priv->reg_base = card->base_addr + EMS_PCI_CAN_BASE_OFFSET
     + (i * EMS_PCI_CAN_CTRL_SIZE);
  if (card->version == 1) {
   priv->read_reg = ems_pci_v1_read_reg;
   priv->write_reg = ems_pci_v1_write_reg;
   priv->post_irq = ems_pci_v1_post_irq;
  } else {
   priv->read_reg = ems_pci_v2_read_reg;
   priv->write_reg = ems_pci_v2_write_reg;
   priv->post_irq = ems_pci_v2_post_irq;
  }


  if (ems_pci_check_chan(priv)) {
   priv->can.clock.freq = EMS_PCI_CAN_CLOCK;
   priv->ocr = EMS_PCI_OCR;
   priv->cdr = EMS_PCI_CDR;

   SET_NETDEV_DEV(dev, &pdev->dev);
   dev->dev_id = i;

   if (card->version == 1)

    writel(PITA2_ICR_INT0_EN | PITA2_ICR_INT0,
           card->conf_addr + PITA2_ICR);
   else

    writel(PLX_ICSR_ENA_CLR,
           card->conf_addr + PLX_ICSR);


   err = register_sja1000dev(dev);
   if (err) {
    dev_err(&pdev->dev, "Registering device failed "
       "(err=%d)\n", err);
    free_sja1000dev(dev);
    goto failure_cleanup;
   }

   card->channels++;

   dev_info(&pdev->dev, "Channel #%d at 0x%p, irq %d\n",
     i + 1, priv->reg_base, dev->irq);
  } else {
   free_sja1000dev(dev);
  }
 }

 return 0;

failure_cleanup:
 dev_err(&pdev->dev, "Error: %d. Cleaning Up.\n", err);

 ems_pci_del_card(pdev);

 return err;
}
