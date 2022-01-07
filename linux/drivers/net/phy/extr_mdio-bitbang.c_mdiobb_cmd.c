
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mdiobb_ops {int (* set_mdio_dir ) (struct mdiobb_ctrl*,int) ;} ;
struct mdiobb_ctrl {struct mdiobb_ops* ops; } ;


 int MDIO_C45 ;
 int mdiobb_send_bit (struct mdiobb_ctrl*,int) ;
 int mdiobb_send_num (struct mdiobb_ctrl*,int ,int) ;
 int stub1 (struct mdiobb_ctrl*,int) ;

__attribute__((used)) static void mdiobb_cmd(struct mdiobb_ctrl *ctrl, int op, u8 phy, u8 reg)
{
 const struct mdiobb_ops *ops = ctrl->ops;
 int i;

 ops->set_mdio_dir(ctrl, 1);
 for (i = 0; i < 32; i++)
  mdiobb_send_bit(ctrl, 1);




 mdiobb_send_bit(ctrl, 0);
 if (op & MDIO_C45)
  mdiobb_send_bit(ctrl, 0);
 else
  mdiobb_send_bit(ctrl, 1);
 mdiobb_send_bit(ctrl, (op >> 1) & 1);
 mdiobb_send_bit(ctrl, (op >> 0) & 1);

 mdiobb_send_num(ctrl, phy, 5);
 mdiobb_send_num(ctrl, reg, 5);
}
