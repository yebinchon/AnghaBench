
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;


 int HHIER_REG ;
 int HIER_INT_EN_MSK ;
 int HIER_REG ;
 int IPC_HHIER_MSK ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static void mei_txe_intr_enable(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 mei_txe_br_reg_write(hw, HHIER_REG, IPC_HHIER_MSK);
 mei_txe_br_reg_write(hw, HIER_REG, HIER_INT_EN_MSK);
}
