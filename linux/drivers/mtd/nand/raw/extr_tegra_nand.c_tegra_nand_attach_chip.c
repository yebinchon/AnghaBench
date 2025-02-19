
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_nand_controller {scalar_t__ regs; int dev; } ;
struct tegra_nand_chip {int config; int config_ecc; int bch_config; } ;
struct TYPE_6__ {int size; int steps; int algo; int strength; int bytes; int write_oob; int read_oob; int write_page_raw; int read_page_raw; int write_page; int read_page; int mode; } ;
struct TYPE_4__ {int step_size; int strength; } ;
struct TYPE_5__ {TYPE_1__ eccreq; } ;
struct nand_chip {int bbt_options; int options; TYPE_3__ ecc; TYPE_2__ base; int controller; } ;
struct mtd_info {int writesize; scalar_t__ oobsize; } ;


 int BCH_ENABLE ;
 int BCH_TVAL_14 ;
 int BCH_TVAL_16 ;
 int BCH_TVAL_4 ;
 int BCH_TVAL_8 ;
 int BITS_PER_BYTE ;
 int BITS_PER_STEP_BCH ;
 int BITS_PER_STEP_RS ;
 scalar_t__ CONFIG ;
 int CONFIG_BUS_WIDTH_16 ;
 int CONFIG_ECC_SEL ;
 int CONFIG_ERR_COR ;
 int CONFIG_HW_ECC ;
 int CONFIG_PIPE_EN ;
 int CONFIG_PS_1024 ;
 int CONFIG_PS_2048 ;
 int CONFIG_PS_256 ;
 int CONFIG_PS_4096 ;
 int CONFIG_PS_512 ;
 int CONFIG_SKIP_SPARE ;
 int CONFIG_SKIP_SPARE_SIZE_4 ;
 int CONFIG_TAG_BYTE_SIZE (scalar_t__) ;
 int CONFIG_TVAL_4 ;
 int CONFIG_TVAL_6 ;
 int CONFIG_TVAL_8 ;
 int DIV_ROUND_UP (int,int ) ;
 int EINVAL ;
 int ENODEV ;
 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;
 int NAND_BUSWIDTH_16 ;

 int NAND_ECC_HW ;

 int NAND_ECC_UNKNOWN ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,char*,int) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int tegra_nand_oob_bch_ops ;
 int tegra_nand_oob_rs_ops ;
 int tegra_nand_read_oob ;
 int tegra_nand_read_page_hwecc ;
 int tegra_nand_read_page_raw ;
 int tegra_nand_select_strength (struct nand_chip*,scalar_t__) ;
 int tegra_nand_write_oob ;
 int tegra_nand_write_page_hwecc ;
 int tegra_nand_write_page_raw ;
 struct tegra_nand_chip* to_tegra_chip (struct nand_chip*) ;
 struct tegra_nand_controller* to_tegra_ctrl (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int tegra_nand_attach_chip(struct nand_chip *chip)
{
 struct tegra_nand_controller *ctrl = to_tegra_ctrl(chip->controller);
 struct tegra_nand_chip *nand = to_tegra_chip(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 int bits_per_step;
 int ret;

 if (chip->bbt_options & NAND_BBT_USE_FLASH)
  chip->bbt_options |= NAND_BBT_NO_OOB;

 chip->ecc.mode = NAND_ECC_HW;
 chip->ecc.size = 512;
 chip->ecc.steps = mtd->writesize / chip->ecc.size;
 if (chip->base.eccreq.step_size != 512) {
  dev_err(ctrl->dev, "Unsupported step size %d\n",
   chip->base.eccreq.step_size);
  return -EINVAL;
 }

 chip->ecc.read_page = tegra_nand_read_page_hwecc;
 chip->ecc.write_page = tegra_nand_write_page_hwecc;
 chip->ecc.read_page_raw = tegra_nand_read_page_raw;
 chip->ecc.write_page_raw = tegra_nand_write_page_raw;
 chip->ecc.read_oob = tegra_nand_read_oob;
 chip->ecc.write_oob = tegra_nand_write_oob;

 if (chip->options & NAND_BUSWIDTH_16)
  nand->config |= CONFIG_BUS_WIDTH_16;

 if (chip->ecc.algo == NAND_ECC_UNKNOWN) {
  if (mtd->writesize < 2048)
   chip->ecc.algo = 128;
  else
   chip->ecc.algo = 129;
 }

 if (chip->ecc.algo == 129 && mtd->writesize < 2048) {
  dev_err(ctrl->dev, "BCH supports 2K or 4K page size only\n");
  return -EINVAL;
 }

 if (!chip->ecc.strength) {
  ret = tegra_nand_select_strength(chip, mtd->oobsize);
  if (ret < 0) {
   dev_err(ctrl->dev,
    "No valid strength found, minimum %d\n",
    chip->base.eccreq.strength);
   return ret;
  }

  chip->ecc.strength = ret;
 }

 nand->config_ecc = CONFIG_PIPE_EN | CONFIG_SKIP_SPARE |
      CONFIG_SKIP_SPARE_SIZE_4;

 switch (chip->ecc.algo) {
 case 128:
  bits_per_step = BITS_PER_STEP_RS * chip->ecc.strength;
  mtd_set_ooblayout(mtd, &tegra_nand_oob_rs_ops);
  nand->config_ecc |= CONFIG_HW_ECC | CONFIG_ECC_SEL |
        CONFIG_ERR_COR;
  switch (chip->ecc.strength) {
  case 4:
   nand->config_ecc |= CONFIG_TVAL_4;
   break;
  case 6:
   nand->config_ecc |= CONFIG_TVAL_6;
   break;
  case 8:
   nand->config_ecc |= CONFIG_TVAL_8;
   break;
  default:
   dev_err(ctrl->dev, "ECC strength %d not supported\n",
    chip->ecc.strength);
   return -EINVAL;
  }
  break;
 case 129:
  bits_per_step = BITS_PER_STEP_BCH * chip->ecc.strength;
  mtd_set_ooblayout(mtd, &tegra_nand_oob_bch_ops);
  nand->bch_config = BCH_ENABLE;
  switch (chip->ecc.strength) {
  case 4:
   nand->bch_config |= BCH_TVAL_4;
   break;
  case 8:
   nand->bch_config |= BCH_TVAL_8;
   break;
  case 14:
   nand->bch_config |= BCH_TVAL_14;
   break;
  case 16:
   nand->bch_config |= BCH_TVAL_16;
   break;
  default:
   dev_err(ctrl->dev, "ECC strength %d not supported\n",
    chip->ecc.strength);
   return -EINVAL;
  }
  break;
 default:
  dev_err(ctrl->dev, "ECC algorithm not supported\n");
  return -EINVAL;
 }

 dev_info(ctrl->dev, "Using %s with strength %d per 512 byte step\n",
   chip->ecc.algo == 129 ? "BCH" : "RS",
   chip->ecc.strength);

 chip->ecc.bytes = DIV_ROUND_UP(bits_per_step, BITS_PER_BYTE);

 switch (mtd->writesize) {
 case 256:
  nand->config |= CONFIG_PS_256;
  break;
 case 512:
  nand->config |= CONFIG_PS_512;
  break;
 case 1024:
  nand->config |= CONFIG_PS_1024;
  break;
 case 2048:
  nand->config |= CONFIG_PS_2048;
  break;
 case 4096:
  nand->config |= CONFIG_PS_4096;
  break;
 default:
  dev_err(ctrl->dev, "Unsupported writesize %d\n",
   mtd->writesize);
  return -ENODEV;
 }


 nand->config_ecc |= nand->config;


 nand->config |= CONFIG_TAG_BYTE_SIZE(mtd->oobsize - 1);
 writel_relaxed(nand->config, ctrl->regs + CONFIG);

 return 0;
}
