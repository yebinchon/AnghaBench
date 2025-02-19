
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int u8 ;
typedef int u32 ;
struct gpmc_nand_regs {int * gpmc_bch_result0; int * gpmc_bch_result1; int * gpmc_bch_result2; int * gpmc_bch_result3; int * gpmc_bch_result4; int * gpmc_bch_result5; int * gpmc_bch_result6; } ;
struct TYPE_3__ {int bytes; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct omap_nand_info {int ecc_opt; struct gpmc_nand_regs reg; TYPE_2__ nand; } ;
struct mtd_info {int dummy; } ;


 int EINVAL ;





 int* bch4_polynomial ;
 int* bch8_polynomial ;
 struct omap_nand_info* mtd_to_omap (struct mtd_info*) ;
 void* readl (int ) ;

__attribute__((used)) static int _omap_calculate_ecc_bch(struct mtd_info *mtd,
       const u_char *dat, u_char *ecc_calc, int i)
{
 struct omap_nand_info *info = mtd_to_omap(mtd);
 int eccbytes = info->nand.ecc.bytes;
 struct gpmc_nand_regs *gpmc_regs = &info->reg;
 u8 *ecc_code;
 unsigned long bch_val1, bch_val2, bch_val3, bch_val4;
 u32 val;
 int j;

 ecc_code = ecc_calc;
 switch (info->ecc_opt) {
 case 128:
 case 129:
  bch_val1 = readl(gpmc_regs->gpmc_bch_result0[i]);
  bch_val2 = readl(gpmc_regs->gpmc_bch_result1[i]);
  bch_val3 = readl(gpmc_regs->gpmc_bch_result2[i]);
  bch_val4 = readl(gpmc_regs->gpmc_bch_result3[i]);
  *ecc_code++ = (bch_val4 & 0xFF);
  *ecc_code++ = ((bch_val3 >> 24) & 0xFF);
  *ecc_code++ = ((bch_val3 >> 16) & 0xFF);
  *ecc_code++ = ((bch_val3 >> 8) & 0xFF);
  *ecc_code++ = (bch_val3 & 0xFF);
  *ecc_code++ = ((bch_val2 >> 24) & 0xFF);
  *ecc_code++ = ((bch_val2 >> 16) & 0xFF);
  *ecc_code++ = ((bch_val2 >> 8) & 0xFF);
  *ecc_code++ = (bch_val2 & 0xFF);
  *ecc_code++ = ((bch_val1 >> 24) & 0xFF);
  *ecc_code++ = ((bch_val1 >> 16) & 0xFF);
  *ecc_code++ = ((bch_val1 >> 8) & 0xFF);
  *ecc_code++ = (bch_val1 & 0xFF);
  break;
 case 130:
 case 131:
  bch_val1 = readl(gpmc_regs->gpmc_bch_result0[i]);
  bch_val2 = readl(gpmc_regs->gpmc_bch_result1[i]);
  *ecc_code++ = ((bch_val2 >> 12) & 0xFF);
  *ecc_code++ = ((bch_val2 >> 4) & 0xFF);
  *ecc_code++ = ((bch_val2 & 0xF) << 4) |
   ((bch_val1 >> 28) & 0xF);
  *ecc_code++ = ((bch_val1 >> 20) & 0xFF);
  *ecc_code++ = ((bch_val1 >> 12) & 0xFF);
  *ecc_code++ = ((bch_val1 >> 4) & 0xFF);
  *ecc_code++ = ((bch_val1 & 0xF) << 4);
  break;
 case 132:
  val = readl(gpmc_regs->gpmc_bch_result6[i]);
  ecc_code[0] = ((val >> 8) & 0xFF);
  ecc_code[1] = ((val >> 0) & 0xFF);
  val = readl(gpmc_regs->gpmc_bch_result5[i]);
  ecc_code[2] = ((val >> 24) & 0xFF);
  ecc_code[3] = ((val >> 16) & 0xFF);
  ecc_code[4] = ((val >> 8) & 0xFF);
  ecc_code[5] = ((val >> 0) & 0xFF);
  val = readl(gpmc_regs->gpmc_bch_result4[i]);
  ecc_code[6] = ((val >> 24) & 0xFF);
  ecc_code[7] = ((val >> 16) & 0xFF);
  ecc_code[8] = ((val >> 8) & 0xFF);
  ecc_code[9] = ((val >> 0) & 0xFF);
  val = readl(gpmc_regs->gpmc_bch_result3[i]);
  ecc_code[10] = ((val >> 24) & 0xFF);
  ecc_code[11] = ((val >> 16) & 0xFF);
  ecc_code[12] = ((val >> 8) & 0xFF);
  ecc_code[13] = ((val >> 0) & 0xFF);
  val = readl(gpmc_regs->gpmc_bch_result2[i]);
  ecc_code[14] = ((val >> 24) & 0xFF);
  ecc_code[15] = ((val >> 16) & 0xFF);
  ecc_code[16] = ((val >> 8) & 0xFF);
  ecc_code[17] = ((val >> 0) & 0xFF);
  val = readl(gpmc_regs->gpmc_bch_result1[i]);
  ecc_code[18] = ((val >> 24) & 0xFF);
  ecc_code[19] = ((val >> 16) & 0xFF);
  ecc_code[20] = ((val >> 8) & 0xFF);
  ecc_code[21] = ((val >> 0) & 0xFF);
  val = readl(gpmc_regs->gpmc_bch_result0[i]);
  ecc_code[22] = ((val >> 24) & 0xFF);
  ecc_code[23] = ((val >> 16) & 0xFF);
  ecc_code[24] = ((val >> 8) & 0xFF);
  ecc_code[25] = ((val >> 0) & 0xFF);
  break;
 default:
  return -EINVAL;
 }


 switch (info->ecc_opt) {
 case 130:



  for (j = 0; j < eccbytes; j++)
   ecc_calc[j] ^= bch4_polynomial[j];
  break;
 case 131:

  ecc_calc[eccbytes - 1] = 0x0;
  break;
 case 128:



  for (j = 0; j < eccbytes; j++)
   ecc_calc[j] ^= bch8_polynomial[j];
  break;
 case 129:

  ecc_calc[eccbytes - 1] = 0x0;
  break;
 case 132:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
