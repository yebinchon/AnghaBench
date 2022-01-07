
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int aliveness; } ;
struct mei_device {int pg_event; int dev; } ;


 int MEI_PG_EVENT_WAIT ;
 int SICR_HOST_ALIVENESS_REQ_REG ;
 int dev_dbg (int ,char*,int ,int ) ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static bool mei_txe_aliveness_set(struct mei_device *dev, u32 req)
{

 struct mei_txe_hw *hw = to_txe_hw(dev);
 bool do_req = hw->aliveness != req;

 dev_dbg(dev->dev, "Aliveness current=%d request=%d\n",
    hw->aliveness, req);
 if (do_req) {
  dev->pg_event = MEI_PG_EVENT_WAIT;
  mei_txe_br_reg_write(hw, SICR_HOST_ALIVENESS_REQ_REG, req);
 }
 return do_req;
}
