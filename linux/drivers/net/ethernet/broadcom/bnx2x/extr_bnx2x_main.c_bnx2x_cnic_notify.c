
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ctl_info {int cmd; int member_0; } ;
struct bnx2x {int dummy; } ;


 int bnx2x_cnic_ctl_send (struct bnx2x*,struct cnic_ctl_info*) ;

int bnx2x_cnic_notify(struct bnx2x *bp, int cmd)
{
 struct cnic_ctl_info ctl = {0};

 ctl.cmd = cmd;

 return bnx2x_cnic_ctl_send(bp, &ctl);
}
