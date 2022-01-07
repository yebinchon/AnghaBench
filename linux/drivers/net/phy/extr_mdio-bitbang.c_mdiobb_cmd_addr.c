
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_mdio_dir ) (struct mdiobb_ctrl*,int ) ;} ;


 int MDIO_C45_ADDR ;
 int mdiobb_cmd (struct mdiobb_ctrl*,int ,int,unsigned int) ;
 int mdiobb_get_bit (struct mdiobb_ctrl*) ;
 int mdiobb_send_bit (struct mdiobb_ctrl*,int) ;
 int mdiobb_send_num (struct mdiobb_ctrl*,unsigned int,int) ;
 int stub1 (struct mdiobb_ctrl*,int ) ;

__attribute__((used)) static int mdiobb_cmd_addr(struct mdiobb_ctrl *ctrl, int phy, u32 addr)
{
 unsigned int dev_addr = (addr >> 16) & 0x1F;
 unsigned int reg = addr & 0xFFFF;
 mdiobb_cmd(ctrl, MDIO_C45_ADDR, phy, dev_addr);


 mdiobb_send_bit(ctrl, 1);
 mdiobb_send_bit(ctrl, 0);

 mdiobb_send_num(ctrl, reg, 16);

 ctrl->ops->set_mdio_dir(ctrl, 0);
 mdiobb_get_bit(ctrl);

 return dev_addr;
}
