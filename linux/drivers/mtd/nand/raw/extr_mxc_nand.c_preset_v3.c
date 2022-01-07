
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct nand_chip {int options; TYPE_1__ ecc; int pagemask; } ;
struct mxc_nand_host {int eccsize; TYPE_2__* devtype_data; } ;
struct mtd_info {int oobsize; int writesize; int erasesize; } ;
struct TYPE_4__ {int ppb_shift; } ;


 int NAND_BUSWIDTH_16 ;
 scalar_t__ NAND_ECC_HW ;
 int NAND_MAX_CHIPS ;
 scalar_t__ NFC_V3_CONFIG1 ;
 int NFC_V3_CONFIG1_RBA (int ) ;
 scalar_t__ NFC_V3_CONFIG2 ;
 int NFC_V3_CONFIG2_2CMD_PHASES ;
 int NFC_V3_CONFIG2_ECC_EN ;
 int NFC_V3_CONFIG2_ECC_MODE_8 ;
 int NFC_V3_CONFIG2_INT_MSK ;
 int NFC_V3_CONFIG2_NUM_ADDR_PHASE0 ;
 int NFC_V3_CONFIG2_NUM_ADDR_PHASE1 (int) ;
 int NFC_V3_CONFIG2_ONE_CYCLE ;
 int NFC_V3_CONFIG2_PPB (scalar_t__,int ) ;
 int NFC_V3_CONFIG2_PS_2048 ;
 int NFC_V3_CONFIG2_PS_4096 ;
 int NFC_V3_CONFIG2_PS_512 ;
 int NFC_V3_CONFIG2_SPAS (int) ;
 int NFC_V3_CONFIG2_ST_CMD (int) ;
 scalar_t__ NFC_V3_CONFIG3 ;
 int NFC_V3_CONFIG3_ADD_OP (int ) ;
 int NFC_V3_CONFIG3_FW8 ;
 int NFC_V3_CONFIG3_NO_SDMA ;
 int NFC_V3_CONFIG3_NUM_OF_DEVICES (int ) ;
 int NFC_V3_CONFIG3_RBB_MODE ;
 int NFC_V3_CONFIG3_SBB (int) ;
 scalar_t__ NFC_V3_DELAY_LINE ;
 scalar_t__ NFC_V3_IPC ;
 int NFC_V3_IPC_CREQ ;
 scalar_t__ NFC_V3_WRPROT ;
 int NFC_V3_WRPROT_BLS_UNLOCK ;
 int NFC_V3_WRPROT_UNLOCK ;
 scalar_t__ NFC_V3_WRPROT_UNLOCK_BLK_ADD0 ;
 scalar_t__ ffs (int) ;
 int fls (int ) ;
 int get_eccsize (struct mtd_info*) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void preset_v3(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct mxc_nand_host *host = nand_get_controller_data(chip);
 uint32_t config2, config3;
 int i, addr_phases;

 writel(NFC_V3_CONFIG1_RBA(0), NFC_V3_CONFIG1);
 writel(NFC_V3_IPC_CREQ, NFC_V3_IPC);


 writel(NFC_V3_WRPROT_BLS_UNLOCK | NFC_V3_WRPROT_UNLOCK,
   NFC_V3_WRPROT);


 for (i = 0; i < NAND_MAX_CHIPS; i++)
  writel(0xffff << 16, NFC_V3_WRPROT_UNLOCK_BLK_ADD0 + (i << 2));

 writel(0, NFC_V3_IPC);

 config2 = NFC_V3_CONFIG2_ONE_CYCLE |
  NFC_V3_CONFIG2_2CMD_PHASES |
  NFC_V3_CONFIG2_SPAS(mtd->oobsize >> 1) |
  NFC_V3_CONFIG2_ST_CMD(0x70) |
  NFC_V3_CONFIG2_INT_MSK |
  NFC_V3_CONFIG2_NUM_ADDR_PHASE0;

 addr_phases = fls(chip->pagemask) >> 3;

 if (mtd->writesize == 2048) {
  config2 |= NFC_V3_CONFIG2_PS_2048;
  config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
 } else if (mtd->writesize == 4096) {
  config2 |= NFC_V3_CONFIG2_PS_4096;
  config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
 } else {
  config2 |= NFC_V3_CONFIG2_PS_512;
  config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases - 1);
 }

 if (mtd->writesize) {
  if (chip->ecc.mode == NAND_ECC_HW)
   config2 |= NFC_V3_CONFIG2_ECC_EN;

  config2 |= NFC_V3_CONFIG2_PPB(
    ffs(mtd->erasesize / mtd->writesize) - 6,
    host->devtype_data->ppb_shift);
  host->eccsize = get_eccsize(mtd);
  if (host->eccsize == 8)
   config2 |= NFC_V3_CONFIG2_ECC_MODE_8;
 }

 writel(config2, NFC_V3_CONFIG2);

 config3 = NFC_V3_CONFIG3_NUM_OF_DEVICES(0) |
   NFC_V3_CONFIG3_NO_SDMA |
   NFC_V3_CONFIG3_RBB_MODE |
   NFC_V3_CONFIG3_SBB(6) |
   NFC_V3_CONFIG3_ADD_OP(0);

 if (!(chip->options & NAND_BUSWIDTH_16))
  config3 |= NFC_V3_CONFIG3_FW8;

 writel(config3, NFC_V3_CONFIG3);

 writel(0, NFC_V3_DELAY_LINE);
}
