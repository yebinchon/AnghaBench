
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;


 int HICR_SEC_IPC_READINESS_REG ;
 int mei_txe_br_reg_read (struct mei_txe_hw*,int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static u32 mei_txe_readiness_get(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 return mei_txe_br_reg_read(hw, HICR_SEC_IPC_READINESS_REG);
}
