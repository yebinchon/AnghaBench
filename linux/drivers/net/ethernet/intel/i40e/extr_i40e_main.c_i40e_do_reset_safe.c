
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_pf {int dummy; } ;


 int i40e_do_reset (struct i40e_pf*,int ,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void i40e_do_reset_safe(struct i40e_pf *pf, u32 reset_flags)
{
 rtnl_lock();
 i40e_do_reset(pf, reset_flags, 1);
 rtnl_unlock();
}
