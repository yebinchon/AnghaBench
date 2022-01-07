
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int dummy; } ;


 int i40e_rebuild (struct i40e_pf*,int,int) ;
 int i40e_reset (struct i40e_pf*) ;

__attribute__((used)) static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
       bool lock_acquired)
{
 int ret;




 ret = i40e_reset(pf);
 if (!ret)
  i40e_rebuild(pf, reinit, lock_acquired);
}
