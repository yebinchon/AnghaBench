
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int bnx2x_vlan_configure (struct bnx2x*,int) ;

int bnx2x_vlan_reconfigure_vid(struct bnx2x *bp)
{

 bnx2x_vlan_configure(bp, 0);

 return 0;
}
