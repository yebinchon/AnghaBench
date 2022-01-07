
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct platform_device {int dev; } ;
struct TYPE_6__ {int write_oob; int read_oob; int read_oob_raw; int write_oob_raw; int write_page_raw; int read_page_raw; int write_page; int read_page; int mode; } ;
struct TYPE_5__ {int write_buf; int read_buf; int read_byte; int waitfunc; int cmdfunc; int cmd_ctrl; } ;
struct nand_chip {int * controller; TYPE_3__ ecc; TYPE_2__ legacy; } ;
struct TYPE_4__ {int * parent; } ;
struct mtd_info {TYPE_1__ dev; int owner; int name; } ;
struct device_node {int dummy; } ;
struct brcmnand_host {int cs; struct nand_chip chip; struct platform_device* pdev; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int controller; } ;


 int BRCMNAND_CS_CFG ;
 int CFG_BUS_WIDTH ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int NAND_ECC_HW ;
 int THIS_MODULE ;
 int brcmnand_cmd_ctrl ;
 int brcmnand_cmdfunc ;
 int brcmnand_cs_offset (struct brcmnand_controller*,int ,int ) ;
 int brcmnand_read_buf ;
 int brcmnand_read_byte ;
 int brcmnand_read_oob ;
 int brcmnand_read_oob_raw ;
 int brcmnand_read_page ;
 int brcmnand_read_page_raw ;
 int brcmnand_waitfunc ;
 int brcmnand_write_buf ;
 int brcmnand_write_oob ;
 int brcmnand_write_oob_raw ;
 int brcmnand_write_page ;
 int brcmnand_write_page_raw ;
 int dev_err (int *,char*) ;
 int devm_kasprintf (int *,int ,char*,int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_readreg (struct brcmnand_controller*,int ) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_controller_data (struct nand_chip*,struct brcmnand_host*) ;
 int nand_set_flash_node (struct nand_chip*,struct device_node*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_writereg (struct brcmnand_controller*,int ,int) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int brcmnand_init_cs(struct brcmnand_host *host, struct device_node *dn)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 struct platform_device *pdev = host->pdev;
 struct mtd_info *mtd;
 struct nand_chip *chip;
 int ret;
 u16 cfg_offs;

 ret = of_property_read_u32(dn, "reg", &host->cs);
 if (ret) {
  dev_err(&pdev->dev, "can't get chip-select\n");
  return -ENXIO;
 }

 mtd = nand_to_mtd(&host->chip);
 chip = &host->chip;

 nand_set_flash_node(chip, dn);
 nand_set_controller_data(chip, host);
 mtd->name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "brcmnand.%d",
       host->cs);
 if (!mtd->name)
  return -ENOMEM;

 mtd->owner = THIS_MODULE;
 mtd->dev.parent = &pdev->dev;

 chip->legacy.cmd_ctrl = brcmnand_cmd_ctrl;
 chip->legacy.cmdfunc = brcmnand_cmdfunc;
 chip->legacy.waitfunc = brcmnand_waitfunc;
 chip->legacy.read_byte = brcmnand_read_byte;
 chip->legacy.read_buf = brcmnand_read_buf;
 chip->legacy.write_buf = brcmnand_write_buf;

 chip->ecc.mode = NAND_ECC_HW;
 chip->ecc.read_page = brcmnand_read_page;
 chip->ecc.write_page = brcmnand_write_page;
 chip->ecc.read_page_raw = brcmnand_read_page_raw;
 chip->ecc.write_page_raw = brcmnand_write_page_raw;
 chip->ecc.write_oob_raw = brcmnand_write_oob_raw;
 chip->ecc.read_oob_raw = brcmnand_read_oob_raw;
 chip->ecc.read_oob = brcmnand_read_oob;
 chip->ecc.write_oob = brcmnand_write_oob;

 chip->controller = &ctrl->controller;






 cfg_offs = brcmnand_cs_offset(ctrl, host->cs, BRCMNAND_CS_CFG);
 nand_writereg(ctrl, cfg_offs,
        nand_readreg(ctrl, cfg_offs) & ~CFG_BUS_WIDTH);

 ret = nand_scan(chip, 1);
 if (ret)
  return ret;

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret)
  nand_cleanup(chip);

 return ret;
}
