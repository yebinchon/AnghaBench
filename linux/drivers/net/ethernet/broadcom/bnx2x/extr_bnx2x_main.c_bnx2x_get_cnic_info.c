
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int bnx2x_get_fcoe_info (struct bnx2x*) ;
 int bnx2x_get_iscsi_info (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_get_cnic_info(struct bnx2x *bp)
{





 bnx2x_get_iscsi_info(bp);
 bnx2x_get_fcoe_info(bp);
}
