
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdiobb_ctrl {int dummy; } ;


 int PIR_MDC ;
 int ravb_mdio_ctrl (struct mdiobb_ctrl*,int ,int) ;

__attribute__((used)) static void ravb_set_mdc(struct mdiobb_ctrl *ctrl, int level)
{
 ravb_mdio_ctrl(ctrl, PIR_MDC, level);
}
