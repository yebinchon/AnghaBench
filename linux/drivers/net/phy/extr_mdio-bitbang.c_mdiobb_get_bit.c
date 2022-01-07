
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdiobb_ops {int (* get_mdio_data ) (struct mdiobb_ctrl*) ;int (* set_mdc ) (struct mdiobb_ctrl*,int) ;} ;
struct mdiobb_ctrl {struct mdiobb_ops* ops; } ;


 int MDIO_DELAY ;
 int MDIO_READ_DELAY ;
 int ndelay (int ) ;
 int stub1 (struct mdiobb_ctrl*,int) ;
 int stub2 (struct mdiobb_ctrl*,int) ;
 int stub3 (struct mdiobb_ctrl*) ;

__attribute__((used)) static int mdiobb_get_bit(struct mdiobb_ctrl *ctrl)
{
 const struct mdiobb_ops *ops = ctrl->ops;

 ndelay(MDIO_DELAY);
 ops->set_mdc(ctrl, 1);
 ndelay(MDIO_READ_DELAY);
 ops->set_mdc(ctrl, 0);

 return ops->get_mdio_data(ctrl);
}
