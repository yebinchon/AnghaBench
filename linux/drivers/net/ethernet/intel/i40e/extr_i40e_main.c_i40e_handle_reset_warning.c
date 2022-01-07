
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int dummy; } ;


 int i40e_prep_for_reset (struct i40e_pf*,int) ;
 int i40e_reset_and_rebuild (struct i40e_pf*,int,int) ;

__attribute__((used)) static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired)
{
 i40e_prep_for_reset(pf, lock_acquired);
 i40e_reset_and_rebuild(pf, 0, lock_acquired);
}
