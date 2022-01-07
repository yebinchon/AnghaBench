
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_sdr_timings {int tFEAT_max; int tWB_max; int tADL_min; } ;
struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int (* waitfunc ) (struct nand_chip*) ;int (* write_byte ) (struct nand_chip*,int const) ;int (* cmdfunc ) (struct nand_chip*,int ,int ,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int cur_cs; int data_interface; } ;


 int EIO ;
 int NAND_CMD_SET_FEATURES ;
 struct nand_operation NAND_OPERATION (int ,struct nand_op_instr*) ;
 struct nand_op_instr NAND_OP_8BIT_DATA_OUT (int,void const*,int ) ;
 struct nand_op_instr NAND_OP_ADDR (int,int *,int ) ;
 struct nand_op_instr NAND_OP_CMD (int ,int ) ;
 struct nand_op_instr NAND_OP_WAIT_RDY (int ,int ) ;
 int NAND_STATUS_FAIL ;
 int ONFI_SUBFEATURE_PARAM_LEN ;
 int PSEC_TO_MSEC (int ) ;
 int PSEC_TO_NSEC (int ) ;
 int nand_exec_op (struct nand_chip*,struct nand_operation*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,int ,int) ;
 int stub2 (struct nand_chip*,int const) ;
 int stub3 (struct nand_chip*) ;

__attribute__((used)) static int nand_set_features_op(struct nand_chip *chip, u8 feature,
    const void *data)
{
 const u8 *params = data;
 int i, ret;

 if (nand_has_exec_op(chip)) {
  const struct nand_sdr_timings *sdr =
   nand_get_sdr_timings(&chip->data_interface);
  struct nand_op_instr instrs[] = {
   NAND_OP_CMD(NAND_CMD_SET_FEATURES, 0),
   NAND_OP_ADDR(1, &feature, PSEC_TO_NSEC(sdr->tADL_min)),
   NAND_OP_8BIT_DATA_OUT(ONFI_SUBFEATURE_PARAM_LEN, data,
           PSEC_TO_NSEC(sdr->tWB_max)),
   NAND_OP_WAIT_RDY(PSEC_TO_MSEC(sdr->tFEAT_max), 0),
  };
  struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);

  return nand_exec_op(chip, &op);
 }

 chip->legacy.cmdfunc(chip, NAND_CMD_SET_FEATURES, feature, -1);
 for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; ++i)
  chip->legacy.write_byte(chip, params[i]);

 ret = chip->legacy.waitfunc(chip);
 if (ret < 0)
  return ret;

 if (ret & NAND_STATUS_FAIL)
  return -EIO;

 return 0;
}
