
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_pf {int state; } ;


 int BIT (int ) ;
 int __I40E_CONFIG_BUSY ;
 int __I40E_CORE_RESET_REQUESTED ;
 int __I40E_DOWN ;
 int __I40E_DOWN_REQUESTED ;
 int __I40E_GLOBAL_RESET_REQUESTED ;
 int __I40E_PF_RESET_REQUESTED ;
 int __I40E_REINIT_REQUESTED ;
 int __I40E_RESET_INTR_RECEIVED ;
 int clear_bit (int ,int ) ;
 int i40e_do_reset (struct i40e_pf*,int ,int) ;
 int i40e_prep_for_reset (struct i40e_pf*,int) ;
 int i40e_rebuild (struct i40e_pf*,int,int) ;
 int i40e_reset (struct i40e_pf*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void i40e_reset_subtask(struct i40e_pf *pf)
{
 u32 reset_flags = 0;

 if (test_bit(__I40E_REINIT_REQUESTED, pf->state)) {
  reset_flags |= BIT(__I40E_REINIT_REQUESTED);
  clear_bit(__I40E_REINIT_REQUESTED, pf->state);
 }
 if (test_bit(__I40E_PF_RESET_REQUESTED, pf->state)) {
  reset_flags |= BIT(__I40E_PF_RESET_REQUESTED);
  clear_bit(__I40E_PF_RESET_REQUESTED, pf->state);
 }
 if (test_bit(__I40E_CORE_RESET_REQUESTED, pf->state)) {
  reset_flags |= BIT(__I40E_CORE_RESET_REQUESTED);
  clear_bit(__I40E_CORE_RESET_REQUESTED, pf->state);
 }
 if (test_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state)) {
  reset_flags |= BIT(__I40E_GLOBAL_RESET_REQUESTED);
  clear_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state);
 }
 if (test_bit(__I40E_DOWN_REQUESTED, pf->state)) {
  reset_flags |= BIT(__I40E_DOWN_REQUESTED);
  clear_bit(__I40E_DOWN_REQUESTED, pf->state);
 }




 if (test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
  i40e_prep_for_reset(pf, 0);
  i40e_reset(pf);
  i40e_rebuild(pf, 0, 0);
 }


 if (reset_flags &&
     !test_bit(__I40E_DOWN, pf->state) &&
     !test_bit(__I40E_CONFIG_BUSY, pf->state)) {
  i40e_do_reset(pf, reset_flags, 0);
 }
}
