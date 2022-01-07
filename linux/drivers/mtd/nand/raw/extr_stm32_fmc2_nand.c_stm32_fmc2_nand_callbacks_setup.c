
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_fmc2_nfc {scalar_t__ dma_ecc_ch; scalar_t__ dma_rx_ch; scalar_t__ dma_tx_ch; } ;
struct TYPE_2__ {scalar_t__ strength; int bytes; int read_page; int correct; int calculate; int options; int hwctl; int read_page_raw; int write_page_raw; int write_page; } ;
struct nand_chip {int options; TYPE_1__ ecc; int controller; } ;


 scalar_t__ FMC2_ECC_BCH8 ;
 scalar_t__ FMC2_ECC_HAM ;
 int NAND_BUSWIDTH_16 ;
 int NAND_ECC_GENERIC_ERASED_CHECK ;
 int stm32_fmc2_bch_calculate ;
 int stm32_fmc2_bch_correct ;
 int stm32_fmc2_ham_calculate ;
 int stm32_fmc2_ham_correct ;
 int stm32_fmc2_hwctl ;
 int stm32_fmc2_read_page ;
 int stm32_fmc2_sequencer_correct ;
 int stm32_fmc2_sequencer_read_page ;
 int stm32_fmc2_sequencer_read_page_raw ;
 int stm32_fmc2_sequencer_write_page ;
 int stm32_fmc2_sequencer_write_page_raw ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;

__attribute__((used)) static void stm32_fmc2_nand_callbacks_setup(struct nand_chip *chip)
{
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);





 if (fmc2->dma_tx_ch && fmc2->dma_rx_ch && fmc2->dma_ecc_ch) {

  chip->ecc.correct = stm32_fmc2_sequencer_correct;
  chip->ecc.write_page = stm32_fmc2_sequencer_write_page;
  chip->ecc.read_page = stm32_fmc2_sequencer_read_page;
  chip->ecc.write_page_raw = stm32_fmc2_sequencer_write_page_raw;
  chip->ecc.read_page_raw = stm32_fmc2_sequencer_read_page_raw;
 } else {

  chip->ecc.hwctl = stm32_fmc2_hwctl;
  if (chip->ecc.strength == FMC2_ECC_HAM) {

   chip->ecc.calculate = stm32_fmc2_ham_calculate;
   chip->ecc.correct = stm32_fmc2_ham_correct;
   chip->ecc.options |= NAND_ECC_GENERIC_ERASED_CHECK;
  } else {

   chip->ecc.calculate = stm32_fmc2_bch_calculate;
   chip->ecc.correct = stm32_fmc2_bch_correct;
   chip->ecc.read_page = stm32_fmc2_read_page;
  }
 }


 if (chip->ecc.strength == FMC2_ECC_HAM)
  chip->ecc.bytes = chip->options & NAND_BUSWIDTH_16 ? 4 : 3;
 else if (chip->ecc.strength == FMC2_ECC_BCH8)
  chip->ecc.bytes = chip->options & NAND_BUSWIDTH_16 ? 14 : 13;
 else
  chip->ecc.bytes = chip->options & NAND_BUSWIDTH_16 ? 8 : 7;
}
