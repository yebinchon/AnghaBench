
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_l4_spec {int* dst_mac; int* src_mac; int vlan_id; int dst_port; int src_port; int* dst_ip; int* src_ip; } ;
struct TYPE_12__ {struct virtchnl_l4_spec tcp_spec; } ;
struct TYPE_11__ {struct virtchnl_l4_spec tcp_spec; } ;
struct virtchnl_filter {int flow_type; size_t action_meta; int field_flags; TYPE_2__ data; TYPE_1__ mask; } ;
struct i40e_vsi {int seid; } ;
struct i40e_vf {int num_cloud_filters; int cloud_filter_list; int vf_id; TYPE_6__* ch; int adq_enabled; int vf_states; struct i40e_pf* pf; } ;
struct TYPE_18__ {int asq_last_status; } ;
struct TYPE_19__ {TYPE_8__ aq; } ;
struct i40e_pf {TYPE_9__ hw; TYPE_7__* pdev; struct i40e_vsi** vsi; } ;
struct TYPE_14__ {int src_ip6; int dst_ip6; } ;
struct TYPE_13__ {int src_ip; int dst_ip; } ;
struct TYPE_15__ {TYPE_4__ v6; TYPE_3__ v4; } ;
struct i40e_cloud_filter {int* dst_mac; int* src_mac; int vlan_id; int dst_port; int src_port; int cloud_node; int flags; int seid; TYPE_5__ ip; int n_proto; } ;
typedef int i40e_status ;
struct TYPE_17__ {int dev; } ;
struct TYPE_16__ {size_t vsi_idx; } ;


 int ARRAY_SIZE (int*) ;
 int ENOMEM ;
 int ETH_ALEN ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int GFP_KERNEL ;
 int I40E_ERR_PARAM ;
 int I40E_VF_STATE_ACTIVE ;
 int INIT_HLIST_NODE (int *) ;
 int VIRTCHNL_OP_ADD_CLOUD_FILTER ;


 int dev_err (int *,char*,int ,int ,int ) ;
 int dev_info (int *,char*,int ) ;
 int hlist_add_head (int *,int *) ;
 int i40e_add_del_cloud_filter (struct i40e_vsi*,struct i40e_cloud_filter*,int) ;
 int i40e_add_del_cloud_filter_big_buf (struct i40e_vsi*,struct i40e_cloud_filter*,int) ;
 int i40e_aq_str (TYPE_9__*,int ) ;
 int i40e_stat_str (TYPE_9__*,int) ;
 scalar_t__ i40e_validate_cloud_filter (struct i40e_vf*,struct virtchnl_filter*) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int kfree (struct i40e_cloud_filter*) ;
 struct i40e_cloud_filter* kzalloc (int,int ) ;
 int memcpy (int *,int*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_filter *vcf = (struct virtchnl_filter *)msg;
 struct virtchnl_l4_spec mask = vcf->mask.tcp_spec;
 struct virtchnl_l4_spec tcf = vcf->data.tcp_spec;
 struct i40e_cloud_filter *cfilter = ((void*)0);
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = ((void*)0);
 i40e_status aq_ret = 0;
 int i, ret;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto err_out;
 }

 if (!vf->adq_enabled) {
  dev_info(&pf->pdev->dev,
    "VF %d: ADq is not enabled, can't apply cloud filter\n",
    vf->vf_id);
  aq_ret = I40E_ERR_PARAM;
  goto err_out;
 }

 if (i40e_validate_cloud_filter(vf, vcf)) {
  dev_info(&pf->pdev->dev,
    "VF %d: Invalid input/s, can't apply cloud filter\n",
    vf->vf_id);
  aq_ret = I40E_ERR_PARAM;
  goto err_out;
 }

 cfilter = kzalloc(sizeof(*cfilter), GFP_KERNEL);
 if (!cfilter)
  return -ENOMEM;


 for (i = 0; i < ETH_ALEN; i++)
  cfilter->dst_mac[i] = mask.dst_mac[i] & tcf.dst_mac[i];


 for (i = 0; i < ETH_ALEN; i++)
  cfilter->src_mac[i] = mask.src_mac[i] & tcf.src_mac[i];

 cfilter->vlan_id = mask.vlan_id & tcf.vlan_id;
 cfilter->dst_port = mask.dst_port & tcf.dst_port;
 cfilter->src_port = mask.src_port & tcf.src_port;

 switch (vcf->flow_type) {
 case 129:
  cfilter->n_proto = ETH_P_IP;
  if (mask.dst_ip[0] & tcf.dst_ip[0])
   memcpy(&cfilter->ip.v4.dst_ip, tcf.dst_ip,
          ARRAY_SIZE(tcf.dst_ip));
  else if (mask.src_ip[0] & tcf.dst_ip[0])
   memcpy(&cfilter->ip.v4.src_ip, tcf.src_ip,
          ARRAY_SIZE(tcf.dst_ip));
  break;
 case 128:
  cfilter->n_proto = ETH_P_IPV6;
  if (mask.dst_ip[3] & tcf.dst_ip[3])
   memcpy(&cfilter->ip.v6.dst_ip6, tcf.dst_ip,
          sizeof(cfilter->ip.v6.dst_ip6));
  if (mask.src_ip[3] & tcf.src_ip[3])
   memcpy(&cfilter->ip.v6.src_ip6, tcf.src_ip,
          sizeof(cfilter->ip.v6.src_ip6));
  break;
 default:



  dev_info(&pf->pdev->dev, "VF %d: Flow type not configured\n",
    vf->vf_id);
 }


 vsi = pf->vsi[vf->ch[vcf->action_meta].vsi_idx];
 cfilter->seid = vsi->seid;
 cfilter->flags = vcf->field_flags;


 if (tcf.dst_port)
  ret = i40e_add_del_cloud_filter_big_buf(vsi, cfilter, 1);
 else
  ret = i40e_add_del_cloud_filter(vsi, cfilter, 1);
 if (ret) {
  dev_err(&pf->pdev->dev,
   "VF %d: Failed to add cloud filter, err %s aq_err %s\n",
   vf->vf_id, i40e_stat_str(&pf->hw, ret),
   i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  goto err_free;
 }

 INIT_HLIST_NODE(&cfilter->cloud_node);
 hlist_add_head(&cfilter->cloud_node, &vf->cloud_filter_list);

 cfilter = ((void*)0);
 vf->num_cloud_filters++;
err_free:
 kfree(cfilter);
err_out:
 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ADD_CLOUD_FILTER,
           aq_ret);
}
