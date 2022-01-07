
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bnx2x_credit_pool_obj {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 int PF_VLAN_CREDIT_E2 (struct bnx2x*,scalar_t__) ;
 int bnx2x_init_credit_pool (struct bnx2x_credit_pool_obj*,int,int) ;

void bnx2x_init_vlan_credit_pool(struct bnx2x *bp,
     struct bnx2x_credit_pool_obj *p,
     u8 func_id,
     u8 func_num)
{
 if (CHIP_IS_E1x(bp)) {



  bnx2x_init_credit_pool(p, 0, -1);
 } else {



  if (func_num > 0) {
   int credit = PF_VLAN_CREDIT_E2(bp, func_num);

   bnx2x_init_credit_pool(p, -1 , credit);
  } else

   bnx2x_init_credit_pool(p, 0, 0);
 }
}
