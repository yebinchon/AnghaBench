
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {scalar_t__ type; struct ice_q_vector** q_vectors; scalar_t__ netdev; struct ice_pf* back; } ;
struct ice_q_vector {int v_idx; int napi; int affinity_mask; struct ice_vsi* vsi; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ ICE_VSI_VF ;
 int NAPI_POLL_WEIGHT ;
 scalar_t__ cpu_online (int) ;
 int cpumask_set_cpu (int,int *) ;
 struct ice_q_vector* devm_kzalloc (int *,int,int ) ;
 int ice_napi_poll ;
 int netif_napi_add (scalar_t__,int *,int ,int ) ;

__attribute__((used)) static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, int v_idx)
{
 struct ice_pf *pf = vsi->back;
 struct ice_q_vector *q_vector;


 q_vector = devm_kzalloc(&pf->pdev->dev, sizeof(*q_vector), GFP_KERNEL);
 if (!q_vector)
  return -ENOMEM;

 q_vector->vsi = vsi;
 q_vector->v_idx = v_idx;
 if (vsi->type == ICE_VSI_VF)
  goto out;

 if (cpu_online(v_idx))
  cpumask_set_cpu(v_idx, &q_vector->affinity_mask);





 if (vsi->netdev)
  netif_napi_add(vsi->netdev, &q_vector->napi, ice_napi_poll,
          NAPI_POLL_WEIGHT);

out:

 vsi->q_vectors[v_idx] = q_vector;

 return 0;
}
