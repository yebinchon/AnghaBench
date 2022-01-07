
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int class; int irq; int dev; } ;
struct TYPE_9__ {int * parent; } ;
struct mtd_info {char* name; TYPE_2__ dev; } ;
struct TYPE_8__ {int * ops; } ;
struct TYPE_10__ {TYPE_1__ dummy_controller; int block_bad; scalar_t__ chip_delay; void* get_features; void* set_features; int select_chip; int write_buf; int read_buf; int read_byte; int dev_ready; int cmdfunc; } ;
struct TYPE_11__ {TYPE_3__ legacy; int options; int bbt_options; } ;
struct cafe_priv {int mmio; TYPE_4__ nand; scalar_t__ usedma; struct pci_dev* pdev; int rs; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GLOBAL_CTRL ;
 int GLOBAL_IRQ_MASK ;
 int IRQF_SHARED ;
 int NAND_BBT_USE_FLASH ;
 int NAND_DMA_CTRL ;
 int NAND_IRQ_MASK ;
 int NAND_RESET ;
 int NAND_SKIP_BBTSCAN ;
 int NAND_TIMING1 ;
 int NAND_TIMING2 ;
 int NAND_TIMING3 ;
 int PCI_CLASS_MEMORY_FLASH ;
 int cafe_dev_dbg (int *,char*,int,int,...) ;
 int cafe_device_ready ;
 int cafe_mul ;
 int cafe_nand_block_bad ;
 int cafe_nand_cmdfunc ;
 int cafe_nand_controller_ops ;
 int cafe_nand_interrupt ;
 int cafe_read_buf ;
 int cafe_read_byte ;
 int cafe_readl (struct cafe_priv*,int ) ;
 int cafe_select_chip ;
 int cafe_write_buf ;
 int cafe_writel (struct cafe_priv*,int,int ) ;
 int dev_warn (int *,char*,...) ;
 int free_irq (int,struct mtd_info*) ;
 int init_rs_non_canonical (int,int *,int ,int,int) ;
 int kfree (struct cafe_priv*) ;
 struct cafe_priv* kzalloc (int,int ) ;
 int mtd_device_parse_register (struct mtd_info*,int ,int *,int *,int ) ;
 int nand_cleanup (TYPE_4__*) ;
 void* nand_get_set_features_notsupp ;
 int nand_scan (TYPE_4__*,int) ;
 int nand_set_controller_data (TYPE_4__*,struct cafe_priv*) ;
 struct mtd_info* nand_to_mtd (TYPE_4__*) ;
 int numtimings ;
 int part_probes ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct mtd_info*) ;
 int pci_set_master (struct pci_dev*) ;
 int request_irq (int,int *,int ,char*,struct mtd_info*) ;
 scalar_t__ skipbbt ;
 int* timing ;

__attribute__((used)) static int cafe_nand_probe(struct pci_dev *pdev,
         const struct pci_device_id *ent)
{
 struct mtd_info *mtd;
 struct cafe_priv *cafe;
 uint32_t ctrl;
 int err = 0;



 if ((pdev->class >> 8) != PCI_CLASS_MEMORY_FLASH)
  return -ENODEV;

 err = pci_enable_device(pdev);
 if (err)
  return err;

 pci_set_master(pdev);

 cafe = kzalloc(sizeof(*cafe), GFP_KERNEL);
 if (!cafe)
  return -ENOMEM;

 mtd = nand_to_mtd(&cafe->nand);
 mtd->dev.parent = &pdev->dev;
 nand_set_controller_data(&cafe->nand, cafe);

 cafe->pdev = pdev;
 cafe->mmio = pci_iomap(pdev, 0, 0);
 if (!cafe->mmio) {
  dev_warn(&pdev->dev, "failed to iomap\n");
  err = -ENOMEM;
  goto out_free_mtd;
 }

 cafe->rs = init_rs_non_canonical(12, &cafe_mul, 0, 1, 8);
 if (!cafe->rs) {
  err = -ENOMEM;
  goto out_ior;
 }

 cafe->nand.legacy.cmdfunc = cafe_nand_cmdfunc;
 cafe->nand.legacy.dev_ready = cafe_device_ready;
 cafe->nand.legacy.read_byte = cafe_read_byte;
 cafe->nand.legacy.read_buf = cafe_read_buf;
 cafe->nand.legacy.write_buf = cafe_write_buf;
 cafe->nand.legacy.select_chip = cafe_select_chip;
 cafe->nand.legacy.set_features = nand_get_set_features_notsupp;
 cafe->nand.legacy.get_features = nand_get_set_features_notsupp;

 cafe->nand.legacy.chip_delay = 0;


 cafe->nand.bbt_options = NAND_BBT_USE_FLASH;

 if (skipbbt) {
  cafe->nand.options |= NAND_SKIP_BBTSCAN;
  cafe->nand.legacy.block_bad = cafe_nand_block_bad;
 }

 if (numtimings && numtimings != 3) {
  dev_warn(&cafe->pdev->dev, "%d timing register values ignored; precisely three are required\n", numtimings);
 }

 if (numtimings == 3) {
  cafe_dev_dbg(&cafe->pdev->dev, "Using provided timings (%08x %08x %08x)\n",
        timing[0], timing[1], timing[2]);
 } else {
  timing[0] = cafe_readl(cafe, NAND_TIMING1);
  timing[1] = cafe_readl(cafe, NAND_TIMING2);
  timing[2] = cafe_readl(cafe, NAND_TIMING3);

  if (timing[0] | timing[1] | timing[2]) {
   cafe_dev_dbg(&cafe->pdev->dev, "Timing registers already set (%08x %08x %08x)\n",
         timing[0], timing[1], timing[2]);
  } else {
   dev_warn(&cafe->pdev->dev, "Timing registers unset; using most conservative defaults\n");
   timing[0] = timing[1] = timing[2] = 0xffffffff;
  }
 }


 cafe_writel(cafe, 1, NAND_RESET);
 cafe_writel(cafe, 0, NAND_RESET);

 cafe_writel(cafe, timing[0], NAND_TIMING1);
 cafe_writel(cafe, timing[1], NAND_TIMING2);
 cafe_writel(cafe, timing[2], NAND_TIMING3);

 cafe_writel(cafe, 0xffffffff, NAND_IRQ_MASK);
 err = request_irq(pdev->irq, &cafe_nand_interrupt, IRQF_SHARED,
     "CAFE NAND", mtd);
 if (err) {
  dev_warn(&pdev->dev, "Could not register IRQ %d\n", pdev->irq);
  goto out_ior;
 }


 ctrl = cafe_readl(cafe, GLOBAL_CTRL);
 ctrl &= 0xffffeff0;
 ctrl |= 0x00007000;
 cafe_writel(cafe, ctrl | 0x05, GLOBAL_CTRL);
 cafe_writel(cafe, ctrl | 0x0a, GLOBAL_CTRL);
 cafe_writel(cafe, 0, NAND_DMA_CTRL);

 cafe_writel(cafe, 0x7006, GLOBAL_CTRL);
 cafe_writel(cafe, 0x700a, GLOBAL_CTRL);


 cafe_writel(cafe, 0x80000007, GLOBAL_IRQ_MASK);
 cafe_dev_dbg(&cafe->pdev->dev, "Control %x, IRQ mask %x\n",
  cafe_readl(cafe, GLOBAL_CTRL),
  cafe_readl(cafe, GLOBAL_IRQ_MASK));


 cafe->usedma = 0;


 cafe->nand.legacy.dummy_controller.ops = &cafe_nand_controller_ops;
 err = nand_scan(&cafe->nand, 2);
 if (err)
  goto out_irq;

 pci_set_drvdata(pdev, mtd);

 mtd->name = "cafe_nand";
 err = mtd_device_parse_register(mtd, part_probes, ((void*)0), ((void*)0), 0);
 if (err)
  goto out_cleanup_nand;

 goto out;

 out_cleanup_nand:
 nand_cleanup(&cafe->nand);
 out_irq:

 cafe_writel(cafe, ~1 & cafe_readl(cafe, GLOBAL_IRQ_MASK), GLOBAL_IRQ_MASK);
 free_irq(pdev->irq, mtd);
 out_ior:
 pci_iounmap(pdev, cafe->mmio);
 out_free_mtd:
 kfree(cafe);
 out:
 return err;
}
