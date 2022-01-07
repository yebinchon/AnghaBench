
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tango_nfc {struct tango_chip** chips; scalar_t__ pbus_base; int hw; } ;
struct TYPE_3__ {int dev_ready; int cmd_ctrl; int select_chip; int read_buf; int write_buf; int read_byte; } ;
struct nand_ecc_ctrl {int strength; scalar_t__ size; int steps; } ;
struct nand_chip {int options; int * controller; TYPE_1__ legacy; struct nand_ecc_ctrl ecc; } ;
struct tango_chip {int bb_cfg; void* pkt_n_cfg; void* pkt_0_cfg; int xfer_cfg; scalar_t__ base; struct nand_chip nand_chip; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {int writesize; TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int BBM_SIZE ;
 int BB_CFG (int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int MAX_CS ;
 scalar_t__ METADATA_SIZE ;
 int NAND_NO_SUBPAGE_WRITE ;
 int NAND_USE_BOUNCE_BUFFER ;
 int NAND_WAIT_TCCS ;
 void* PKT_CFG (scalar_t__,int ) ;
 int XFER_CFG (int,int,int ,scalar_t__) ;
 struct tango_nfc* dev_get_drvdata (struct device*) ;
 struct tango_chip* devm_kzalloc (struct device*,int,int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_flash_node (struct nand_chip*,struct device_node*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 int of_property_read_u32_index (struct device_node*,char*,int ,int*) ;
 int tango_cmd_ctrl ;
 int tango_dev_ready ;
 int tango_nand_ooblayout_ops ;
 int tango_read_buf ;
 int tango_read_byte ;
 int tango_select_chip ;
 int tango_write_buf ;

__attribute__((used)) static int chip_init(struct device *dev, struct device_node *np)
{
 u32 cs;
 int err, res;
 struct mtd_info *mtd;
 struct nand_chip *chip;
 struct tango_chip *tchip;
 struct nand_ecc_ctrl *ecc;
 struct tango_nfc *nfc = dev_get_drvdata(dev);

 tchip = devm_kzalloc(dev, sizeof(*tchip), GFP_KERNEL);
 if (!tchip)
  return -ENOMEM;

 res = of_property_count_u32_elems(np, "reg");
 if (res < 0)
  return res;

 if (res != 1)
  return -ENOTSUPP;

 err = of_property_read_u32_index(np, "reg", 0, &cs);
 if (err)
  return err;

 if (cs >= MAX_CS)
  return -EINVAL;

 chip = &tchip->nand_chip;
 ecc = &chip->ecc;
 mtd = nand_to_mtd(chip);

 chip->legacy.read_byte = tango_read_byte;
 chip->legacy.write_buf = tango_write_buf;
 chip->legacy.read_buf = tango_read_buf;
 chip->legacy.select_chip = tango_select_chip;
 chip->legacy.cmd_ctrl = tango_cmd_ctrl;
 chip->legacy.dev_ready = tango_dev_ready;
 chip->options = NAND_USE_BOUNCE_BUFFER |
   NAND_NO_SUBPAGE_WRITE |
   NAND_WAIT_TCCS;
 chip->controller = &nfc->hw;
 tchip->base = nfc->pbus_base + (cs * 256);

 nand_set_flash_node(chip, np);
 mtd_set_ooblayout(mtd, &tango_nand_ooblayout_ops);
 mtd->dev.parent = dev;

 err = nand_scan(chip, 1);
 if (err)
  return err;

 tchip->xfer_cfg = XFER_CFG(cs, 1, ecc->steps, METADATA_SIZE);
 tchip->pkt_0_cfg = PKT_CFG(ecc->size + METADATA_SIZE, ecc->strength);
 tchip->pkt_n_cfg = PKT_CFG(ecc->size, ecc->strength);
 tchip->bb_cfg = BB_CFG(mtd->writesize, BBM_SIZE);

 err = mtd_device_register(mtd, ((void*)0), 0);
 if (err) {
  nand_cleanup(chip);
  return err;
 }

 nfc->chips[cs] = tchip;

 return 0;
}
