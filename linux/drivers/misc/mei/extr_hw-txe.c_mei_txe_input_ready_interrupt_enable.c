
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;


 int SEC_IPC_HOST_INT_MASK_IN_RDY ;
 int SEC_IPC_HOST_INT_MASK_REG ;
 int mei_txe_sec_reg_read (struct mei_txe_hw*,int ) ;
 int mei_txe_sec_reg_write (struct mei_txe_hw*,int ,int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static void mei_txe_input_ready_interrupt_enable(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);
 u32 hintmsk;

 hintmsk = mei_txe_sec_reg_read(hw, SEC_IPC_HOST_INT_MASK_REG);
 hintmsk |= SEC_IPC_HOST_INT_MASK_IN_RDY;
 mei_txe_sec_reg_write(hw, SEC_IPC_HOST_INT_MASK_REG, hintmsk);
}
