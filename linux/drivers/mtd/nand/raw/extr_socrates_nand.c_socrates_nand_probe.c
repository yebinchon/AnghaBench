
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int chip_delay; int dev_ready; int read_buf; int write_buf; int read_byte; int cmd_ctrl; } ;
struct TYPE_8__ {int algo; int mode; } ;
struct nand_chip {TYPE_3__ legacy; TYPE_2__ ecc; } ;
struct socrates_nand_host {int * io_base; TYPE_4__* dev; struct nand_chip nand_chip; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {TYPE_4__* parent; } ;
struct mtd_info {char* name; TYPE_1__ dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_ECC_HAMMING ;
 int NAND_ECC_SOFT ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_set_drvdata (TYPE_4__*,struct socrates_nand_host*) ;
 struct socrates_nand_host* devm_kzalloc (TYPE_4__*,int,int ) ;
 int iounmap (int *) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_release (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_controller_data (struct nand_chip*,struct socrates_nand_host*) ;
 int nand_set_flash_node (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int * of_iomap (int ,int ) ;
 int socrates_nand_cmd_ctrl ;
 int socrates_nand_device_ready ;
 int socrates_nand_read_buf ;
 int socrates_nand_read_byte ;
 int socrates_nand_write_buf ;

__attribute__((used)) static int socrates_nand_probe(struct platform_device *ofdev)
{
 struct socrates_nand_host *host;
 struct mtd_info *mtd;
 struct nand_chip *nand_chip;
 int res;


 host = devm_kzalloc(&ofdev->dev, sizeof(*host), GFP_KERNEL);
 if (!host)
  return -ENOMEM;

 host->io_base = of_iomap(ofdev->dev.of_node, 0);
 if (host->io_base == ((void*)0)) {
  dev_err(&ofdev->dev, "ioremap failed\n");
  return -EIO;
 }

 nand_chip = &host->nand_chip;
 mtd = nand_to_mtd(nand_chip);
 host->dev = &ofdev->dev;


 nand_set_controller_data(nand_chip, host);
 nand_set_flash_node(nand_chip, ofdev->dev.of_node);
 mtd->name = "socrates_nand";
 mtd->dev.parent = &ofdev->dev;

 nand_chip->legacy.cmd_ctrl = socrates_nand_cmd_ctrl;
 nand_chip->legacy.read_byte = socrates_nand_read_byte;
 nand_chip->legacy.write_buf = socrates_nand_write_buf;
 nand_chip->legacy.read_buf = socrates_nand_read_buf;
 nand_chip->legacy.dev_ready = socrates_nand_device_ready;

 nand_chip->ecc.mode = NAND_ECC_SOFT;
 nand_chip->ecc.algo = NAND_ECC_HAMMING;


 nand_chip->legacy.chip_delay = 20;

 dev_set_drvdata(&ofdev->dev, host);

 res = nand_scan(nand_chip, 1);
 if (res)
  goto out;

 res = mtd_device_register(mtd, ((void*)0), 0);
 if (!res)
  return res;

 nand_release(nand_chip);

out:
 iounmap(host->io_base);
 return res;
}
