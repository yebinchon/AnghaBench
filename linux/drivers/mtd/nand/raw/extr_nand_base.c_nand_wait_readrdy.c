
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_sdr_timings {int tR_max; } ;
struct nand_chip {int options; int data_interface; } ;


 int NAND_NEED_READRDY ;
 int PSEC_TO_MSEC (int ) ;
 int WARN_ON (int ) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 int nand_wait_rdy_op (struct nand_chip*,int ,int ) ;

__attribute__((used)) static void nand_wait_readrdy(struct nand_chip *chip)
{
 const struct nand_sdr_timings *sdr;

 if (!(chip->options & NAND_NEED_READRDY))
  return;

 sdr = nand_get_sdr_timings(&chip->data_interface);
 WARN_ON(nand_wait_rdy_op(chip, PSEC_TO_MSEC(sdr->tR_max), 0));
}
