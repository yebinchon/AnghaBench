
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdiobb_ctrl {int dummy; } ;


 int PIR_MMD ;
 int sh_mdio_ctrl (struct mdiobb_ctrl*,int ,int) ;

__attribute__((used)) static void sh_mmd_ctrl(struct mdiobb_ctrl *ctrl, int bit)
{
 sh_mdio_ctrl(ctrl, PIR_MMD, bit);
}
