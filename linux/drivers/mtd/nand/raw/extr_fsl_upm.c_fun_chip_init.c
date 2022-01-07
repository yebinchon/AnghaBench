
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct resource {scalar_t__ start; } ;
struct TYPE_9__ {int parent; } ;
struct mtd_info {int name; TYPE_3__ dev; } ;
struct TYPE_8__ {int dev_ready; int select_chip; int write_buf; int read_buf; int read_byte; int chip_delay; int cmd_ctrl; int IO_ADDR_W; int IO_ADDR_R; } ;
struct TYPE_7__ {int algo; int mode; } ;
struct TYPE_10__ {TYPE_2__ legacy; TYPE_1__ ecc; } ;
struct fsl_upm_nand {int mchip_count; scalar_t__* rnb_gpio; TYPE_4__ chip; int dev; int chip_delay; int io_base; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_ECC_HAMMING ;
 int NAND_ECC_SOFT ;
 int fun_chip_ready ;
 int fun_cmd_ctrl ;
 int fun_read_buf ;
 int fun_read_byte ;
 int fun_select_chip ;
 int fun_write_buf ;
 int kasprintf (int ,char*,int ,struct device_node*) ;
 int kfree (int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_scan (TYPE_4__*,int) ;
 int nand_set_flash_node (TYPE_4__*,struct device_node*) ;
 struct mtd_info* nand_to_mtd (TYPE_4__*) ;
 struct device_node* of_get_next_child (struct device_node const*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int fun_chip_init(struct fsl_upm_nand *fun,
    const struct device_node *upm_np,
    const struct resource *io_res)
{
 struct mtd_info *mtd = nand_to_mtd(&fun->chip);
 int ret;
 struct device_node *flash_np;

 fun->chip.legacy.IO_ADDR_R = fun->io_base;
 fun->chip.legacy.IO_ADDR_W = fun->io_base;
 fun->chip.legacy.cmd_ctrl = fun_cmd_ctrl;
 fun->chip.legacy.chip_delay = fun->chip_delay;
 fun->chip.legacy.read_byte = fun_read_byte;
 fun->chip.legacy.read_buf = fun_read_buf;
 fun->chip.legacy.write_buf = fun_write_buf;
 fun->chip.ecc.mode = NAND_ECC_SOFT;
 fun->chip.ecc.algo = NAND_ECC_HAMMING;
 if (fun->mchip_count > 1)
  fun->chip.legacy.select_chip = fun_select_chip;

 if (fun->rnb_gpio[0] >= 0)
  fun->chip.legacy.dev_ready = fun_chip_ready;

 mtd->dev.parent = fun->dev;

 flash_np = of_get_next_child(upm_np, ((void*)0));
 if (!flash_np)
  return -ENODEV;

 nand_set_flash_node(&fun->chip, flash_np);
 mtd->name = kasprintf(GFP_KERNEL, "0x%llx.%pOFn", (u64)io_res->start,
         flash_np);
 if (!mtd->name) {
  ret = -ENOMEM;
  goto err;
 }

 ret = nand_scan(&fun->chip, fun->mchip_count);
 if (ret)
  goto err;

 ret = mtd_device_register(mtd, ((void*)0), 0);
err:
 of_node_put(flash_np);
 if (ret)
  kfree(mtd->name);
 return ret;
}
