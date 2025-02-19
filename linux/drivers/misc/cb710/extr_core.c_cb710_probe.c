
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int dev; } ;
struct cb710_chip {int platform_id; int slot_refs_count; int iobase; struct pci_dev* pdev; int irq_lock; } ;


 int BUG_ON (int) ;
 int CB710_SLOT_MMC ;
 int CB710_SLOT_MS ;
 int CB710_SLOT_SM ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 scalar_t__ atomic_read (int *) ;
 int cb710_ida ;
 int cb710_irq_handler ;
 int cb710_pci_configure (struct pci_dev*) ;
 int cb710_register_slot (struct cb710_chip*,int,int,char*) ;
 int cb710_unregister_slot (struct cb710_chip*,int) ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*,int,int ,int ) ;
 struct cb710_chip* devm_kzalloc (int *,int ,int ) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct cb710_chip*) ;
 int ida_alloc (int *,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_set_drvdata (struct pci_dev*,struct cb710_chip*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;
 int slot ;
 int spin_lock_init (int *) ;
 int struct_size (struct cb710_chip*,int ,int) ;

__attribute__((used)) static int cb710_probe(struct pci_dev *pdev,
 const struct pci_device_id *ent)
{
 struct cb710_chip *chip;
 u32 val;
 int err;
 int n = 0;

 err = cb710_pci_configure(pdev);
 if (err)
  return err;


 pci_read_config_dword(pdev, 0x48, &val);
 if (!(val & 0x80000000)) {
  pci_write_config_dword(pdev, 0x48, val|0x71000000);
  pci_read_config_dword(pdev, 0x48, &val);
 }

 dev_dbg(&pdev->dev, "PCI config[0x48] = 0x%08X\n", val);
 if (!(val & 0x70000000))
  return -ENODEV;
 val = (val >> 28) & 7;
 if (val & CB710_SLOT_MMC)
  ++n;
 if (val & CB710_SLOT_MS)
  ++n;
 if (val & CB710_SLOT_SM)
  ++n;

 chip = devm_kzalloc(&pdev->dev, struct_size(chip, slot, n),
       GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 err = pcim_enable_device(pdev);
 if (err)
  return err;

 err = pcim_iomap_regions(pdev, 0x0001, KBUILD_MODNAME);
 if (err)
  return err;

 spin_lock_init(&chip->irq_lock);
 chip->pdev = pdev;
 chip->iobase = pcim_iomap_table(pdev)[0];

 pci_set_drvdata(pdev, chip);

 err = devm_request_irq(&pdev->dev, pdev->irq,
  cb710_irq_handler, IRQF_SHARED, KBUILD_MODNAME, chip);
 if (err)
  return err;

 err = ida_alloc(&cb710_ida, GFP_KERNEL);
 if (err < 0)
  return err;
 chip->platform_id = err;

 dev_info(&pdev->dev, "id %d, IO 0x%p, IRQ %d\n",
  chip->platform_id, chip->iobase, pdev->irq);

 if (val & CB710_SLOT_MMC) {
  err = cb710_register_slot(chip,
   CB710_SLOT_MMC, 0x00, "cb710-mmc");
  if (err)
   return err;
 }

 if (val & CB710_SLOT_MS) {
  err = cb710_register_slot(chip,
   CB710_SLOT_MS, 0x40, "cb710-ms");
  if (err)
   goto unreg_mmc;
 }

 if (val & CB710_SLOT_SM) {
  err = cb710_register_slot(chip,
   CB710_SLOT_SM, 0x60, "cb710-sm");
  if (err)
   goto unreg_ms;
 }

 return 0;
unreg_ms:
 cb710_unregister_slot(chip, CB710_SLOT_MS);
unreg_mmc:
 cb710_unregister_slot(chip, CB710_SLOT_MMC);




 return err;
}
