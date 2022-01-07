
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int gpmc_ecc_config; int gpmc_ecc_control; int gpmc_ecc_size_config; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {TYPE_1__ ecc; } ;
struct omap_nand_info {int gpmc_cs; TYPE_4__ reg; TYPE_3__* pdev; TYPE_2__ nand; } ;
struct nand_chip {int options; } ;
struct TYPE_7__ {int dev; } ;


 int ECC1 ;
 int ECC1RESULTSIZE ;
 int ECCCLEAR ;
 int ECCSIZE1_SHIFT ;
 int NAND_BUSWIDTH_16 ;



 int dev_info (int *,char*,int) ;
 struct omap_nand_info* mtd_to_omap (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int writel (int,int ) ;

__attribute__((used)) static void omap_enable_hwecc(struct nand_chip *chip, int mode)
{
 struct omap_nand_info *info = mtd_to_omap(nand_to_mtd(chip));
 unsigned int dev_width = (chip->options & NAND_BUSWIDTH_16) ? 1 : 0;
 u32 val;


 val = ECCCLEAR | ECC1;
 writel(val, info->reg.gpmc_ecc_control);


 val = ((((info->nand.ecc.size >> 1) - 1) << ECCSIZE1_SHIFT) |
    ECC1RESULTSIZE);
 writel(val, info->reg.gpmc_ecc_size_config);

 switch (mode) {
 case 130:
 case 128:
  writel(ECCCLEAR | ECC1, info->reg.gpmc_ecc_control);
  break;
 case 129:
  writel(ECCCLEAR, info->reg.gpmc_ecc_control);
  break;
 default:
  dev_info(&info->pdev->dev,
   "error: unrecognized Mode[%d]!\n", mode);
  break;
 }


 val = (dev_width << 7) | (info->gpmc_cs << 1) | (0x1);
 writel(val, info->reg.gpmc_ecc_config);
}
