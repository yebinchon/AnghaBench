
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {struct i40e_q_vector** q_vectors; scalar_t__ netdev; } ;
struct i40e_q_vector {int v_idx; int napi; int affinity_mask; struct i40e_vsi* vsi; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NAPI_POLL_WEIGHT ;
 int cpu_possible_mask ;
 int cpumask_copy (int *,int ) ;
 int i40e_napi_poll ;
 struct i40e_q_vector* kzalloc (int,int ) ;
 int netif_napi_add (scalar_t__,int *,int ,int ) ;

__attribute__((used)) static int i40e_vsi_alloc_q_vector(struct i40e_vsi *vsi, int v_idx, int cpu)
{
 struct i40e_q_vector *q_vector;


 q_vector = kzalloc(sizeof(struct i40e_q_vector), GFP_KERNEL);
 if (!q_vector)
  return -ENOMEM;

 q_vector->vsi = vsi;
 q_vector->v_idx = v_idx;
 cpumask_copy(&q_vector->affinity_mask, cpu_possible_mask);

 if (vsi->netdev)
  netif_napi_add(vsi->netdev, &q_vector->napi,
          i40e_napi_poll, NAPI_POLL_WEIGHT);


 vsi->q_vectors[v_idx] = q_vector;

 return 0;
}
