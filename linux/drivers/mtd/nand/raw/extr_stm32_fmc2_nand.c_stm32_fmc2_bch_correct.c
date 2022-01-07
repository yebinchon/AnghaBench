
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; int dev; int complete; } ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; int controller; } ;


 int ETIMEDOUT ;
 scalar_t__ FMC2_BCHDSR0 ;
 scalar_t__ FMC2_BCHDSR1 ;
 scalar_t__ FMC2_BCHDSR2 ;
 scalar_t__ FMC2_BCHDSR3 ;
 scalar_t__ FMC2_BCHDSR4 ;
 int FMC2_TIMEOUT_MS ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 int readl_relaxed (scalar_t__) ;
 int stm32_fmc2_bch_decode (int ,int *,int *) ;
 int stm32_fmc2_disable_bch_irq (struct stm32_fmc2_nfc*) ;
 int stm32_fmc2_set_ecc (struct stm32_fmc2_nfc*,int) ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int stm32_fmc2_bch_correct(struct nand_chip *chip, u8 *dat,
      u8 *read_ecc, u8 *calc_ecc)
{
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);
 u32 ecc_sta[5];


 if (!wait_for_completion_timeout(&fmc2->complete,
      msecs_to_jiffies(FMC2_TIMEOUT_MS))) {
  dev_err(fmc2->dev, "bch timeout\n");
  stm32_fmc2_disable_bch_irq(fmc2);
  return -ETIMEDOUT;
 }

 ecc_sta[0] = readl_relaxed(fmc2->io_base + FMC2_BCHDSR0);
 ecc_sta[1] = readl_relaxed(fmc2->io_base + FMC2_BCHDSR1);
 ecc_sta[2] = readl_relaxed(fmc2->io_base + FMC2_BCHDSR2);
 ecc_sta[3] = readl_relaxed(fmc2->io_base + FMC2_BCHDSR3);
 ecc_sta[4] = readl_relaxed(fmc2->io_base + FMC2_BCHDSR4);


 stm32_fmc2_set_ecc(fmc2, 0);

 return stm32_fmc2_bch_decode(chip->ecc.size, dat, ecc_sta);
}
