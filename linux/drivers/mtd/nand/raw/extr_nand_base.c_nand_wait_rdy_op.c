
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int chip_delay; int dev_ready; } ;
struct nand_chip {TYPE_1__ legacy; int cur_cs; } ;


 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_WAIT_RDY (int ,int ) ;
 int PSEC_TO_MSEC (unsigned int) ;
 int PSEC_TO_NSEC (unsigned int) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int nand_wait_ready (struct nand_chip*) ;
 int udelay (int ) ;

__attribute__((used)) static int nand_wait_rdy_op(struct nand_chip *chip, unsigned int timeout_ms,
       unsigned int delay_ns)
{
 if (nand_has_exec_op(chip)) {
  struct nand_op_instr instrs[] = {
   NAND_OP_WAIT_RDY(PSEC_TO_MSEC(timeout_ms),
      PSEC_TO_NSEC(delay_ns)),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);

  return nand_exec_op(chip, &op);
 }


 if (!chip->legacy.dev_ready)
  udelay(chip->legacy.chip_delay);
 else
  nand_wait_ready(chip);

 return 0;
}
