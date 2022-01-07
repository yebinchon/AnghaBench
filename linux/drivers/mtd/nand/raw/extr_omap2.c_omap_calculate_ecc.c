
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
struct TYPE_2__ {int gpmc_ecc1_result; int gpmc_ecc_config; } ;
struct omap_nand_info {int gpmc_cs; TYPE_1__ reg; } ;
struct nand_chip {int dummy; } ;


 int CS_MASK ;
 int ECC_CONFIG_CS_SHIFT ;
 int EINVAL ;
 struct omap_nand_info* mtd_to_omap (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int readl (int ) ;

__attribute__((used)) static int omap_calculate_ecc(struct nand_chip *chip, const u_char *dat,
         u_char *ecc_code)
{
 struct omap_nand_info *info = mtd_to_omap(nand_to_mtd(chip));
 u32 val;

 val = readl(info->reg.gpmc_ecc_config);
 if (((val >> ECC_CONFIG_CS_SHIFT) & CS_MASK) != info->gpmc_cs)
  return -EINVAL;


 val = readl(info->reg.gpmc_ecc1_result);
 *ecc_code++ = val;
 *ecc_code++ = val >> 16;

 *ecc_code++ = ((val >> 8) & 0x0f) | ((val >> 20) & 0xf0);

 return 0;
}
