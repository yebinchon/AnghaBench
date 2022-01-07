
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int num_q_vectors; struct i40e_pf* back; } ;
struct i40e_pf {int flags; size_t lan_vsi; struct i40e_vsi** vsi; } ;


 int EINVAL ;
 int I40E_FLAG_MSIX_ENABLED ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_next (int,int ) ;
 int i40e_free_q_vector (struct i40e_vsi*,int) ;
 int i40e_vsi_alloc_q_vector (struct i40e_vsi*,int,int) ;
 int nr_cpu_ids ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i40e_vsi_alloc_q_vectors(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 int err, v_idx, num_q_vectors, current_cpu;


 if (pf->flags & I40E_FLAG_MSIX_ENABLED)
  num_q_vectors = vsi->num_q_vectors;
 else if (vsi == pf->vsi[pf->lan_vsi])
  num_q_vectors = 1;
 else
  return -EINVAL;

 current_cpu = cpumask_first(cpu_online_mask);

 for (v_idx = 0; v_idx < num_q_vectors; v_idx++) {
  err = i40e_vsi_alloc_q_vector(vsi, v_idx, current_cpu);
  if (err)
   goto err_out;
  current_cpu = cpumask_next(current_cpu, cpu_online_mask);
  if (unlikely(current_cpu >= nr_cpu_ids))
   current_cpu = cpumask_first(cpu_online_mask);
 }

 return 0;

err_out:
 while (v_idx--)
  i40e_free_q_vector(vsi, v_idx);

 return err;
}
