
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int state; } ;


 int __I40E_DOWN ;
 int __I40E_FD_FLUSH_REQUESTED ;
 int i40e_fdir_check_and_reenable (struct i40e_pf*) ;
 int i40e_fdir_flush_and_replay (struct i40e_pf*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void i40e_fdir_reinit_subtask(struct i40e_pf *pf)
{


 if (test_bit(__I40E_DOWN, pf->state))
  return;

 if (test_bit(__I40E_FD_FLUSH_REQUESTED, pf->state))
  i40e_fdir_flush_and_replay(pf);

 i40e_fdir_check_and_reenable(pf);

}
