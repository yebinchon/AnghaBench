
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; int dev; int complete; } ;
struct TYPE_2__ {scalar_t__ strength; } ;
struct nand_chip {TYPE_1__ ecc; int controller; } ;


 int ETIMEDOUT ;
 scalar_t__ FMC2_BCHPBR1 ;
 scalar_t__ FMC2_BCHPBR2 ;
 scalar_t__ FMC2_BCHPBR3 ;
 scalar_t__ FMC2_BCHPBR4 ;
 scalar_t__ FMC2_ECC_BCH8 ;
 int FMC2_TIMEOUT_MS ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 int readl_relaxed (scalar_t__) ;
 int stm32_fmc2_disable_bch_irq (struct stm32_fmc2_nfc*) ;
 int stm32_fmc2_set_ecc (struct stm32_fmc2_nfc*,int) ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int stm32_fmc2_bch_calculate(struct nand_chip *chip, const u8 *data,
        u8 *ecc)
{
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);
 u32 bchpbr;


 if (!wait_for_completion_timeout(&fmc2->complete,
      msecs_to_jiffies(FMC2_TIMEOUT_MS))) {
  dev_err(fmc2->dev, "bch timeout\n");
  stm32_fmc2_disable_bch_irq(fmc2);
  return -ETIMEDOUT;
 }


 bchpbr = readl_relaxed(fmc2->io_base + FMC2_BCHPBR1);
 ecc[0] = bchpbr;
 ecc[1] = bchpbr >> 8;
 ecc[2] = bchpbr >> 16;
 ecc[3] = bchpbr >> 24;

 bchpbr = readl_relaxed(fmc2->io_base + FMC2_BCHPBR2);
 ecc[4] = bchpbr;
 ecc[5] = bchpbr >> 8;
 ecc[6] = bchpbr >> 16;

 if (chip->ecc.strength == FMC2_ECC_BCH8) {
  ecc[7] = bchpbr >> 24;

  bchpbr = readl_relaxed(fmc2->io_base + FMC2_BCHPBR3);
  ecc[8] = bchpbr;
  ecc[9] = bchpbr >> 8;
  ecc[10] = bchpbr >> 16;
  ecc[11] = bchpbr >> 24;

  bchpbr = readl_relaxed(fmc2->io_base + FMC2_BCHPBR4);
  ecc[12] = bchpbr;
 }


 stm32_fmc2_set_ecc(fmc2, 0);

 return 0;
}
