
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int readiness; int aliveness; } ;
struct mei_device {int dev; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 int mei_txe_aliveness_get (struct mei_device*) ;
 int mei_txe_readiness_get (struct mei_device*) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static void mei_txe_hw_config(struct mei_device *dev)
{

 struct mei_txe_hw *hw = to_txe_hw(dev);

 hw->aliveness = mei_txe_aliveness_get(dev);
 hw->readiness = mei_txe_readiness_get(dev);

 dev_dbg(dev->dev, "aliveness_resp = 0x%08x, readiness = 0x%08x.\n",
  hw->aliveness, hw->readiness);
}
