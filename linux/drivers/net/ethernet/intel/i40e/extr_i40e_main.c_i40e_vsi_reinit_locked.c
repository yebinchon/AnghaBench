
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int state; } ;


 int WARN_ON (int ) ;
 int __I40E_CONFIG_BUSY ;
 int clear_bit (int ,int ) ;
 int i40e_down (struct i40e_vsi*) ;
 int i40e_up (struct i40e_vsi*) ;
 int in_interrupt () ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void i40e_vsi_reinit_locked(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;

 WARN_ON(in_interrupt());
 while (test_and_set_bit(__I40E_CONFIG_BUSY, pf->state))
  usleep_range(1000, 2000);
 i40e_down(vsi);

 i40e_up(vsi);
 clear_bit(__I40E_CONFIG_BUSY, pf->state);
}
