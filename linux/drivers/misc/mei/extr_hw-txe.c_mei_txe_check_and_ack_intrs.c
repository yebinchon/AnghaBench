
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int intr_cause; } ;
struct mei_device {int dummy; } ;


 int HHISR_REG ;
 int HISR_INT_STS_MSK ;
 int HISR_REG ;
 int IPC_HHIER_MSK ;
 int IPC_HHIER_SEC ;
 int SEC_IPC_HOST_INT_STATUS_IN_RDY ;
 int SEC_IPC_HOST_INT_STATUS_PENDING ;
 int SEC_IPC_HOST_INT_STATUS_REG ;
 int TXE_INTR_IN_READY ;
 int mei_txe_aliveness_get (struct mei_device*) ;
 int mei_txe_br_reg_read (struct mei_txe_hw*,int ) ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int) ;
 int mei_txe_intr_disable (struct mei_device*) ;
 int mei_txe_sec_reg_read_silent (struct mei_txe_hw*,int ) ;
 int mei_txe_sec_reg_write_silent (struct mei_txe_hw*,int ,int) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static bool mei_txe_check_and_ack_intrs(struct mei_device *dev, bool do_ack)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);
 u32 hisr;
 u32 hhisr;
 u32 ipc_isr;
 u32 aliveness;
 bool generated;


 hhisr = mei_txe_br_reg_read(hw, HHISR_REG);
 generated = (hhisr & IPC_HHIER_MSK);
 if (!generated)
  goto out;

 hisr = mei_txe_br_reg_read(hw, HISR_REG);

 aliveness = mei_txe_aliveness_get(dev);
 if (hhisr & IPC_HHIER_SEC && aliveness) {
  ipc_isr = mei_txe_sec_reg_read_silent(hw,
    SEC_IPC_HOST_INT_STATUS_REG);
 } else {
  ipc_isr = 0;
  hhisr &= ~IPC_HHIER_SEC;
 }

 generated = generated ||
  (hisr & HISR_INT_STS_MSK) ||
  (ipc_isr & SEC_IPC_HOST_INT_STATUS_PENDING);

 if (generated && do_ack) {

  hw->intr_cause |= hisr & HISR_INT_STS_MSK;
  if (ipc_isr & SEC_IPC_HOST_INT_STATUS_IN_RDY)
   hw->intr_cause |= TXE_INTR_IN_READY;


  mei_txe_intr_disable(dev);


  mei_txe_sec_reg_write_silent(hw,
   SEC_IPC_HOST_INT_STATUS_REG, ipc_isr);
  mei_txe_br_reg_write(hw, HISR_REG, hisr);
  mei_txe_br_reg_write(hw, HHISR_REG, hhisr);
 }

out:
 return generated;
}
