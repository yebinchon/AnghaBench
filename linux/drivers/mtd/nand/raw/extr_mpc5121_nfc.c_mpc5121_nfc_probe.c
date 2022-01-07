
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {unsigned long start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int select_chip; void* get_features; void* set_features; int write_buf; int read_buf; int read_byte; int cmdfunc; int dev_ready; } ;
struct TYPE_5__ {int algo; int mode; } ;
struct nand_chip {TYPE_3__ legacy; TYPE_2__ ecc; int bbt_options; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {char* name; int oobsize; int erasesize; int writesize; TYPE_1__ dev; } ;
struct mpc5121_nfc_prv {scalar_t__ irq; int irq_waitq; struct clk* clk; int regs; struct device* dev; struct nand_chip chip; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
typedef int __be32 ;


 int DRV_NAME ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int NAND_BBT_USE_FLASH ;
 int NAND_ECC_HAMMING ;
 int NAND_ECC_SOFT ;
 int NFC_BIG_ENDIAN ;
 int NFC_BLS_UNLOCKED ;
 int NFC_CONFIG ;
 int NFC_CONFIG1 ;
 int NFC_FULL_PAGE_INT ;
 int NFC_INT_MASK ;
 int NFC_PPB_128 ;
 int NFC_PPB_256 ;
 int NFC_PPB_32 ;
 int NFC_PPB_64 ;
 int NFC_RESET ;
 int NFC_RESET_TIMEOUT ;
 int NFC_SPAS ;
 int NFC_UNLOCKEND_BLK0 ;
 int NFC_UNLOCKSTART_BLK0 ;
 int NFC_WPC_UNLOCK ;
 int NFC_WRPROT ;
 scalar_t__ NO_IRQ ;
 int PTR_ERR (struct clk*) ;
 int SPRN_SVR ;
 int ads5121_chipselect_init (struct mtd_info*) ;
 int ads5121_select_chip ;
 int be32_to_cpup (int const*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct mtd_info*) ;
 struct clk* devm_clk_get (struct device*,char*) ;
 int devm_ioremap (struct device*,unsigned long,unsigned long) ;
 struct mpc5121_nfc_prv* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,scalar_t__,int *,int ,int ,struct mtd_info*) ;
 int devm_request_mem_region (struct device*,unsigned long,unsigned long,int ) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int mfspr (int ) ;
 int mpc5121_nfc_command ;
 int mpc5121_nfc_dev_ready ;
 int mpc5121_nfc_free (struct device*,struct mtd_info*) ;
 int mpc5121_nfc_irq ;
 int mpc5121_nfc_read_buf ;
 int mpc5121_nfc_read_byte ;
 int mpc5121_nfc_read_hw_config (struct mtd_info*) ;
 int mpc5121_nfc_select_chip ;
 int mpc5121_nfc_write_buf ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 void* nand_get_set_features_notsupp ;
 int nand_scan (struct nand_chip*,int ) ;
 int nand_set_controller_data (struct nand_chip*,struct mpc5121_nfc_prv*) ;
 int nand_set_flash_node (struct nand_chip*,struct device_node*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nfc_read (struct mtd_info*,int ) ;
 int nfc_set (struct mtd_info*,int ,int) ;
 int nfc_write (struct mtd_info*,int ,int) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 unsigned long resource_size (struct resource*) ;
 int udelay (int) ;

__attribute__((used)) static int mpc5121_nfc_probe(struct platform_device *op)
{
 struct device_node *dn = op->dev.of_node;
 struct clk *clk;
 struct device *dev = &op->dev;
 struct mpc5121_nfc_prv *prv;
 struct resource res;
 struct mtd_info *mtd;
 struct nand_chip *chip;
 unsigned long regs_paddr, regs_size;
 const __be32 *chips_no;
 int resettime = 0;
 int retval = 0;
 int rev, len;





 rev = (mfspr(SPRN_SVR) >> 4) & 0xF;
 if ((rev != 2) && (rev != 3)) {
  dev_err(dev, "SoC revision %u is not supported!\n", rev);
  return -ENXIO;
 }

 prv = devm_kzalloc(dev, sizeof(*prv), GFP_KERNEL);
 if (!prv)
  return -ENOMEM;

 chip = &prv->chip;
 mtd = nand_to_mtd(chip);

 mtd->dev.parent = dev;
 nand_set_controller_data(chip, prv);
 nand_set_flash_node(chip, dn);
 prv->dev = dev;


 retval = mpc5121_nfc_read_hw_config(mtd);
 if (retval) {
  dev_err(dev, "Unable to read NFC config!\n");
  return retval;
 }

 prv->irq = irq_of_parse_and_map(dn, 0);
 if (prv->irq == NO_IRQ) {
  dev_err(dev, "Error mapping IRQ!\n");
  return -EINVAL;
 }

 retval = of_address_to_resource(dn, 0, &res);
 if (retval) {
  dev_err(dev, "Error parsing memory region!\n");
  return retval;
 }

 chips_no = of_get_property(dn, "chips", &len);
 if (!chips_no || len != sizeof(*chips_no)) {
  dev_err(dev, "Invalid/missing 'chips' property!\n");
  return -EINVAL;
 }

 regs_paddr = res.start;
 regs_size = resource_size(&res);

 if (!devm_request_mem_region(dev, regs_paddr, regs_size, DRV_NAME)) {
  dev_err(dev, "Error requesting memory region!\n");
  return -EBUSY;
 }

 prv->regs = devm_ioremap(dev, regs_paddr, regs_size);
 if (!prv->regs) {
  dev_err(dev, "Error mapping memory region!\n");
  return -ENOMEM;
 }

 mtd->name = "MPC5121 NAND";
 chip->legacy.dev_ready = mpc5121_nfc_dev_ready;
 chip->legacy.cmdfunc = mpc5121_nfc_command;
 chip->legacy.read_byte = mpc5121_nfc_read_byte;
 chip->legacy.read_buf = mpc5121_nfc_read_buf;
 chip->legacy.write_buf = mpc5121_nfc_write_buf;
 chip->legacy.select_chip = mpc5121_nfc_select_chip;
 chip->legacy.set_features = nand_get_set_features_notsupp;
 chip->legacy.get_features = nand_get_set_features_notsupp;
 chip->bbt_options = NAND_BBT_USE_FLASH;
 chip->ecc.mode = NAND_ECC_SOFT;
 chip->ecc.algo = NAND_ECC_HAMMING;


 if (of_machine_is_compatible("fsl,mpc5121ads")) {
  retval = ads5121_chipselect_init(mtd);
  if (retval) {
   dev_err(dev, "Chipselect init error!\n");
   return retval;
  }

  chip->legacy.select_chip = ads5121_select_chip;
 }


 clk = devm_clk_get(dev, "ipg");
 if (IS_ERR(clk)) {
  dev_err(dev, "Unable to acquire NFC clock!\n");
  retval = PTR_ERR(clk);
  goto error;
 }
 retval = clk_prepare_enable(clk);
 if (retval) {
  dev_err(dev, "Unable to enable NFC clock!\n");
  goto error;
 }
 prv->clk = clk;


 nfc_set(mtd, NFC_CONFIG1, NFC_RESET);
 while (nfc_read(mtd, NFC_CONFIG1) & NFC_RESET) {
  if (resettime++ >= NFC_RESET_TIMEOUT) {
   dev_err(dev, "Timeout while resetting NFC!\n");
   retval = -EINVAL;
   goto error;
  }

  udelay(1);
 }


 nfc_write(mtd, NFC_CONFIG, NFC_BLS_UNLOCKED);


 nfc_write(mtd, NFC_UNLOCKSTART_BLK0, 0x0000);
 nfc_write(mtd, NFC_UNLOCKEND_BLK0, 0xFFFF);
 nfc_write(mtd, NFC_WRPROT, NFC_WPC_UNLOCK);






 nfc_write(mtd, NFC_CONFIG1, NFC_BIG_ENDIAN | NFC_INT_MASK |
       NFC_FULL_PAGE_INT);


 nfc_write(mtd, NFC_SPAS, mtd->oobsize >> 1);

 init_waitqueue_head(&prv->irq_waitq);
 retval = devm_request_irq(dev, prv->irq, &mpc5121_nfc_irq, 0, DRV_NAME,
         mtd);
 if (retval) {
  dev_err(dev, "Error requesting IRQ!\n");
  goto error;
 }


 retval = nand_scan(chip, be32_to_cpup(chips_no));
 if (retval) {
  dev_err(dev, "NAND Flash not found !\n");
  goto error;
 }


 switch (mtd->erasesize / mtd->writesize) {
 case 32:
  nfc_set(mtd, NFC_CONFIG1, NFC_PPB_32);
  break;

 case 64:
  nfc_set(mtd, NFC_CONFIG1, NFC_PPB_64);
  break;

 case 128:
  nfc_set(mtd, NFC_CONFIG1, NFC_PPB_128);
  break;

 case 256:
  nfc_set(mtd, NFC_CONFIG1, NFC_PPB_256);
  break;

 default:
  dev_err(dev, "Unsupported NAND flash!\n");
  retval = -ENXIO;
  goto error;
 }

 dev_set_drvdata(dev, mtd);


 retval = mtd_device_register(mtd, ((void*)0), 0);
 if (retval) {
  dev_err(dev, "Error adding MTD device!\n");
  goto error;
 }

 return 0;
error:
 mpc5121_nfc_free(dev, mtd);
 return retval;
}
