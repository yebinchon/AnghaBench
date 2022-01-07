
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int intr_cause; } ;
struct mei_device {int dev; } ;


 int HISR_INT_2_STS ;
 int HISR_REG ;
 int TXE_INTR_OUT_DB_BIT ;
 int clear_bit (int ,int *) ;
 int dev_err (int ,char*) ;
 int mei_txe_aliveness_set_sync (struct mei_device*,int) ;
 int mei_txe_br_reg_read (struct mei_txe_hw*,int ) ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int) ;
 int mei_txe_input_ready_interrupt_enable (struct mei_device*) ;
 int mei_txe_intr_enable (struct mei_device*) ;
 int mei_txe_output_ready_set (struct mei_txe_hw*) ;
 int mei_txe_readiness_set_host_rdy (struct mei_device*) ;
 int mei_txe_readiness_wait (struct mei_device*) ;
 int pm_runtime_set_active (int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static int mei_txe_hw_start(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);
 int ret;

 u32 hisr;


 mei_txe_intr_enable(dev);

 ret = mei_txe_readiness_wait(dev);
 if (ret < 0) {
  dev_err(dev->dev, "waiting for readiness failed\n");
  return ret;
 }




 hisr = mei_txe_br_reg_read(hw, HISR_REG);
 if (hisr & HISR_INT_2_STS)
  mei_txe_br_reg_write(hw, HISR_REG, HISR_INT_2_STS);


 clear_bit(TXE_INTR_OUT_DB_BIT, &hw->intr_cause);

 ret = mei_txe_aliveness_set_sync(dev, 1);
 if (ret < 0) {
  dev_err(dev->dev, "wait for aliveness failed ... bailing out\n");
  return ret;
 }

 pm_runtime_set_active(dev->dev);




 mei_txe_input_ready_interrupt_enable(dev);



 mei_txe_output_ready_set(hw);



 mei_txe_readiness_set_host_rdy(dev);

 return 0;
}
