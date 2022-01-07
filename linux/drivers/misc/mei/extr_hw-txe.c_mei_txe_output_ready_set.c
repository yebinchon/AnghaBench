
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int dummy; } ;


 int SEC_IPC_OUTPUT_STATUS_RDY ;
 int SICR_SEC_IPC_OUTPUT_STATUS_REG ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int ) ;

__attribute__((used)) static void mei_txe_output_ready_set(struct mei_txe_hw *hw)
{
 mei_txe_br_reg_write(hw,
   SICR_SEC_IPC_OUTPUT_STATUS_REG,
   SEC_IPC_OUTPUT_STATUS_RDY);
}
