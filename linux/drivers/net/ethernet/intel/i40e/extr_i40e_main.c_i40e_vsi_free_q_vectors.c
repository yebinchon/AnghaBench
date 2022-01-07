
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int num_q_vectors; } ;


 int i40e_free_q_vector (struct i40e_vsi*,int) ;

__attribute__((used)) static void i40e_vsi_free_q_vectors(struct i40e_vsi *vsi)
{
 int v_idx;

 for (v_idx = 0; v_idx < vsi->num_q_vectors; v_idx++)
  i40e_free_q_vector(vsi, v_idx);
}
