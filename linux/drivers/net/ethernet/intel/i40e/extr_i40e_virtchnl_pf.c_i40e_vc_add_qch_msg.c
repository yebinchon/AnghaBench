
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct virtchnl_tc_info {int num_tc; TYPE_5__* list; } ;
struct i40e_vf {int driver_caps; int num_tc; int adq_enabled; scalar_t__ num_req_queues; TYPE_4__* ch; int vf_id; scalar_t__ num_queue_pairs; scalar_t__ spoofchk; int vf_states; struct i40e_pf* pf; } ;
struct i40e_link_status {int link_speed; } ;
struct TYPE_6__ {struct i40e_link_status link_info; } ;
struct TYPE_7__ {TYPE_1__ phy; } ;
struct i40e_pf {int queues_left; TYPE_3__* pdev; TYPE_2__ hw; } ;
typedef int i40e_status ;
struct TYPE_10__ {scalar_t__ count; scalar_t__ max_tx_rate; } ;
struct TYPE_9__ {scalar_t__ max_tx_rate; scalar_t__ num_qps; } ;
struct TYPE_8__ {int dev; } ;


 scalar_t__ I40E_DEFAULT_QUEUES_PER_VF ;
 int I40E_ERR_PARAM ;
 scalar_t__ I40E_MAX_VF_QUEUES ;
 int I40E_MAX_VF_VSI ;
 int I40E_SUCCESS ;
 int I40E_VF_STATE_ACTIVE ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_10000 ;
 scalar_t__ SPEED_20000 ;
 scalar_t__ SPEED_25000 ;
 scalar_t__ SPEED_40000 ;






 int VIRTCHNL_OP_ENABLE_CHANNELS ;
 int VIRTCHNL_VF_OFFLOAD_ADQ ;
 int dev_err (int *,char*,...) ;
 int i40e_reset_vf (struct i40e_vf*,int) ;
 int i40e_vc_notify_vf_reset (struct i40e_vf*) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_tc_info *tci =
  (struct virtchnl_tc_info *)msg;
 struct i40e_pf *pf = vf->pf;
 struct i40e_link_status *ls = &pf->hw.phy.link_info;
 int i, adq_request_qps = 0;
 i40e_status aq_ret = 0;
 u64 speed = 0;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }


 if (vf->spoofchk) {
  dev_err(&pf->pdev->dev,
   "Spoof check is ON, turn it OFF to enable ADq\n");
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }

 if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ADQ)) {
  dev_err(&pf->pdev->dev,
   "VF %d attempting to enable ADq, but hasn't properly negotiated that capability\n",
   vf->vf_id);
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }


 if (!tci->num_tc || tci->num_tc > I40E_MAX_VF_VSI) {
  dev_err(&pf->pdev->dev,
   "VF %d trying to set %u TCs, valid range 1-%u TCs per VF\n",
   vf->vf_id, tci->num_tc, I40E_MAX_VF_VSI);
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }


 for (i = 0; i < tci->num_tc; i++)
  if (!tci->list[i].count ||
      tci->list[i].count > I40E_DEFAULT_QUEUES_PER_VF) {
   dev_err(&pf->pdev->dev,
    "VF %d: TC %d trying to set %u queues, valid range 1-%u queues per TC\n",
    vf->vf_id, i, tci->list[i].count,
    I40E_DEFAULT_QUEUES_PER_VF);
   aq_ret = I40E_ERR_PARAM;
   goto err;
  }


 adq_request_qps = I40E_MAX_VF_QUEUES - I40E_DEFAULT_QUEUES_PER_VF;

 if (pf->queues_left < adq_request_qps) {
  dev_err(&pf->pdev->dev,
   "No queues left to allocate to VF %d\n",
   vf->vf_id);
  aq_ret = I40E_ERR_PARAM;
  goto err;
 } else {




  vf->num_queue_pairs = I40E_MAX_VF_QUEUES;
 }


 switch (ls->link_speed) {
 case 133:
  speed = SPEED_100;
  break;
 case 131:
  speed = SPEED_1000;
  break;
 case 132:
  speed = SPEED_10000;
  break;
 case 130:
  speed = SPEED_20000;
  break;
 case 129:
  speed = SPEED_25000;
  break;
 case 128:
  speed = SPEED_40000;
  break;
 default:
  dev_err(&pf->pdev->dev,
   "Cannot detect link speed\n");
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }


 vf->num_tc = tci->num_tc;
 for (i = 0; i < vf->num_tc; i++) {
  if (tci->list[i].max_tx_rate) {
   if (tci->list[i].max_tx_rate > speed) {
    dev_err(&pf->pdev->dev,
     "Invalid max tx rate %llu specified for VF %d.",
     tci->list[i].max_tx_rate,
     vf->vf_id);
    aq_ret = I40E_ERR_PARAM;
    goto err;
   } else {
    vf->ch[i].max_tx_rate =
     tci->list[i].max_tx_rate;
   }
  }
  vf->ch[i].num_qps = tci->list[i].count;
 }


 vf->adq_enabled = 1;




 vf->num_req_queues = 0;


 i40e_vc_notify_vf_reset(vf);
 i40e_reset_vf(vf, 0);

 return I40E_SUCCESS;


err:
 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ENABLE_CHANNELS,
           aq_ret);
}
