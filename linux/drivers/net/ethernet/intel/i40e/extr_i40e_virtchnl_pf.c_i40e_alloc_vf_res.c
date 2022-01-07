
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40e_vf {scalar_t__ num_req_queues; size_t lan_vsi_idx; int adq_enabled; int num_tc; int num_queue_pairs; int vf_states; int vf_caps; scalar_t__ trusted; int vf_id; struct i40e_pf* pf; } ;
struct i40e_pf {scalar_t__ queues_left; scalar_t__ num_vf_qps; TYPE_2__* pdev; TYPE_1__** vsi; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ alloc_queue_pairs; } ;


 scalar_t__ I40E_DEFAULT_QUEUES_PER_VF ;
 scalar_t__ I40E_MAX_VF_QUEUES ;
 int I40E_VF_STATE_INIT ;
 int I40E_VIRTCHNL_VF_CAP_PRIVILEGE ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*,int ) ;
 int i40e_alloc_vsi_res (struct i40e_vf*,int) ;
 int i40e_free_vf_res (struct i40e_vf*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int i40e_alloc_vf_res(struct i40e_vf *vf)
{
 struct i40e_pf *pf = vf->pf;
 int total_queue_pairs = 0;
 int ret, idx;

 if (vf->num_req_queues &&
     vf->num_req_queues <= pf->queues_left + I40E_DEFAULT_QUEUES_PER_VF)
  pf->num_vf_qps = vf->num_req_queues;
 else
  pf->num_vf_qps = I40E_DEFAULT_QUEUES_PER_VF;


 ret = i40e_alloc_vsi_res(vf, 0);
 if (ret)
  goto error_alloc;
 total_queue_pairs += pf->vsi[vf->lan_vsi_idx]->alloc_queue_pairs;


 if (vf->adq_enabled) {
  if (pf->queues_left >=
      (I40E_MAX_VF_QUEUES - I40E_DEFAULT_QUEUES_PER_VF)) {

   for (idx = 1; idx < vf->num_tc; idx++) {
    ret = i40e_alloc_vsi_res(vf, idx);
    if (ret)
     goto error_alloc;
   }

   total_queue_pairs = I40E_MAX_VF_QUEUES;
  } else {
   dev_info(&pf->pdev->dev, "VF %d: Not enough queues to allocate, disabling ADq\n",
     vf->vf_id);
   vf->adq_enabled = 0;
  }
 }






 if (total_queue_pairs > I40E_DEFAULT_QUEUES_PER_VF)
  pf->queues_left -=
   total_queue_pairs - I40E_DEFAULT_QUEUES_PER_VF;

 if (vf->trusted)
  set_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
 else
  clear_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);




 vf->num_queue_pairs = total_queue_pairs;


 set_bit(I40E_VF_STATE_INIT, &vf->vf_states);

error_alloc:
 if (ret)
  i40e_free_vf_res(vf);

 return ret;
}
