
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;


 scalar_t__ BRIDGE_IPC_OUTPUT_PAYLOAD_REG ;
 int mei_txe_br_reg_read (struct mei_txe_hw*,scalar_t__) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device const*) ;

__attribute__((used)) static u32 mei_txe_out_data_read(const struct mei_device *dev,
     unsigned long idx)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 return mei_txe_br_reg_read(hw,
  BRIDGE_IPC_OUTPUT_PAYLOAD_REG + (idx * sizeof(u32)));
}
