
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;


 int SICR_HOST_IPC_READINESS_RDY_CLR ;
 int SICR_HOST_IPC_READINESS_REQ_REG ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static void mei_txe_readiness_clear(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 mei_txe_br_reg_write(hw, SICR_HOST_IPC_READINESS_REQ_REG,
    SICR_HOST_IPC_READINESS_RDY_CLR);
}
