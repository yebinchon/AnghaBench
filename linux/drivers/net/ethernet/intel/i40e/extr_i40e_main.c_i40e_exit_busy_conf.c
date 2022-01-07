
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int state; } ;


 int __I40E_CONFIG_BUSY ;
 int clear_bit (int ,int ) ;

__attribute__((used)) static void i40e_exit_busy_conf(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;

 clear_bit(__I40E_CONFIG_BUSY, pf->state);
}
