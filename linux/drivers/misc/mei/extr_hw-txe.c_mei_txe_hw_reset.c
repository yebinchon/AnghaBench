
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mei_txe_hw {scalar_t__ aliveness; } ;
struct mei_device {int dev; } ;


 int EIO ;
 int SEC_IPC_INPUT_DOORBELL_REG ;
 int dev_err (int ,char*) ;
 scalar_t__ mei_txe_aliveness_get (struct mei_device*) ;
 scalar_t__ mei_txe_aliveness_poll (struct mei_device*,scalar_t__) ;
 scalar_t__ mei_txe_aliveness_req_get (struct mei_device*) ;
 int mei_txe_aliveness_set (struct mei_device*,int ) ;
 int mei_txe_intr_disable (struct mei_device*) ;
 int mei_txe_readiness_clear (struct mei_device*) ;
 int mei_txe_sec_reg_read_silent (struct mei_txe_hw*,int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static int mei_txe_hw_reset(struct mei_device *dev, bool intr_enable)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 u32 aliveness_req;




 (void)mei_txe_sec_reg_read_silent(hw, SEC_IPC_INPUT_DOORBELL_REG);

 aliveness_req = mei_txe_aliveness_req_get(dev);
 hw->aliveness = mei_txe_aliveness_get(dev);


 mei_txe_intr_disable(dev);






 if (aliveness_req != hw->aliveness)
  if (mei_txe_aliveness_poll(dev, aliveness_req) < 0) {
   dev_err(dev->dev, "wait for aliveness settle failed ... bailing out\n");
   return -EIO;
  }




 if (aliveness_req) {
  mei_txe_aliveness_set(dev, 0);
  if (mei_txe_aliveness_poll(dev, 0) < 0) {
   dev_err(dev->dev, "wait for aliveness failed ... bailing out\n");
   return -EIO;
  }
 }




 mei_txe_readiness_clear(dev);

 return 0;
}
