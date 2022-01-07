
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;


 int HHISR_REG ;
 int HISR_INT_STS_MSK ;
 int HISR_REG ;
 int IPC_HHIER_MSK ;
 int SEC_IPC_HOST_INT_STATUS_PENDING ;
 int SEC_IPC_HOST_INT_STATUS_REG ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int ) ;
 int mei_txe_sec_reg_write_silent (struct mei_txe_hw*,int ,int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static inline void mei_txe_intr_clear(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 mei_txe_sec_reg_write_silent(hw, SEC_IPC_HOST_INT_STATUS_REG,
  SEC_IPC_HOST_INT_STATUS_PENDING);
 mei_txe_br_reg_write(hw, HISR_REG, HISR_INT_STS_MSK);
 mei_txe_br_reg_write(hw, HHISR_REG, IPC_HHIER_MSK);
}
