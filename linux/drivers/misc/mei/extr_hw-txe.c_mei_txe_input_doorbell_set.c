
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int intr_cause; } ;


 int SEC_IPC_INPUT_DOORBELL_REG ;
 int TXE_INTR_IN_READY_BIT ;
 int clear_bit (int ,int *) ;
 int mei_txe_sec_reg_write (struct mei_txe_hw*,int ,int) ;

__attribute__((used)) static void mei_txe_input_doorbell_set(struct mei_txe_hw *hw)
{

 clear_bit(TXE_INTR_IN_READY_BIT, &hw->intr_cause);
 mei_txe_sec_reg_write(hw, SEC_IPC_INPUT_DOORBELL_REG, 1);
}
