
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int dummy; } ;


 int i40e_enter_busy_conf (struct i40e_vsi*) ;
 int i40e_queue_pair_clean_rings (struct i40e_vsi*,int) ;
 int i40e_queue_pair_disable_irq (struct i40e_vsi*,int) ;
 int i40e_queue_pair_reset_stats (struct i40e_vsi*,int) ;
 int i40e_queue_pair_toggle_napi (struct i40e_vsi*,int,int) ;
 int i40e_queue_pair_toggle_rings (struct i40e_vsi*,int,int) ;

int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
{
 int err;

 err = i40e_enter_busy_conf(vsi);
 if (err)
  return err;

 i40e_queue_pair_disable_irq(vsi, queue_pair);
 err = i40e_queue_pair_toggle_rings(vsi, queue_pair, 0 );
 i40e_queue_pair_toggle_napi(vsi, queue_pair, 0 );
 i40e_queue_pair_clean_rings(vsi, queue_pair);
 i40e_queue_pair_reset_stats(vsi, queue_pair);

 return err;
}
