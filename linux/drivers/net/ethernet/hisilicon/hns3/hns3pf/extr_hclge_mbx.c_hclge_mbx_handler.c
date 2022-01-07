
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hclge_vport {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {int* msg; size_t mbx_src_vfid; } ;
struct hclge_cmq_ring {size_t next_to_use; struct hclge_desc* desc; } ;
struct TYPE_5__ {struct hclge_cmq_ring crq; } ;
struct TYPE_7__ {TYPE_1__ cmq; } ;
struct hclge_dev {TYPE_3__ hw; TYPE_2__* pdev; int vport_cfg_mutex; struct hclge_vport* vport; int state; } ;
struct hclge_desc {scalar_t__ flag; scalar_t__ data; } ;
struct TYPE_6__ {int dev; } ;


 int HCLGE_CMDQ_RX_OUTVLD_B ;
 int HCLGE_MAC_ADDR_MC ;
 int HCLGE_MAC_ADDR_UC ;
 int HCLGE_NIC_CRQ_HEAD_REG ;
 int HCLGE_STATE_CMD_DISABLE ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,...) ;
 int hclge_cmd_crq_empty (TYPE_3__*) ;
 int hclge_get_link_info (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_get_link_mode (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_get_queue_id_in_pf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_get_rss_key (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_get_vf_media_type (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_get_vf_queue_depth (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ;
 int hclge_get_vf_queue_info (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ;
 int hclge_get_vf_tcinfo (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ;
 int hclge_handle_link_change_event (struct hclge_dev*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_handle_ncsi_error (struct hclge_dev*) ;
 int hclge_map_unmap_ring_to_vf_vector (struct hclge_vport*,int,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_mbx_reset_vf_queue (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_mbx_ring_ptr_move_crq (struct hclge_cmq_ring*) ;
 int hclge_reset_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_rm_vport_all_mac_table (struct hclge_vport*,int,int ) ;
 int hclge_rm_vport_all_vlan_table (struct hclge_vport*,int) ;
 int hclge_set_vf_alive (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ;
 int hclge_set_vf_mc_mac_addr (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int) ;
 int hclge_set_vf_mtu (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_set_vf_promisc_mode (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_set_vf_uc_mac_addr (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_set_vf_vlan_cfg (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_vf_keep_alive (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*) ;
 int hclge_write_dev (TYPE_3__*,int ,size_t) ;
 int hnae3_get_bit (unsigned int,int ) ;
 unsigned int le16_to_cpu (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void hclge_mbx_handler(struct hclge_dev *hdev)
{
 struct hclge_cmq_ring *crq = &hdev->hw.cmq.crq;
 struct hclge_mbx_vf_to_pf_cmd *req;
 struct hclge_vport *vport;
 struct hclge_desc *desc;
 unsigned int flag;
 int ret;


 while (!hclge_cmd_crq_empty(&hdev->hw)) {
  if (test_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state)) {
   dev_warn(&hdev->pdev->dev,
     "command queue needs re-initializing\n");
   return;
  }

  desc = &crq->desc[crq->next_to_use];
  req = (struct hclge_mbx_vf_to_pf_cmd *)desc->data;

  flag = le16_to_cpu(crq->desc[crq->next_to_use].flag);
  if (unlikely(!hnae3_get_bit(flag, HCLGE_CMDQ_RX_OUTVLD_B))) {
   dev_warn(&hdev->pdev->dev,
     "dropped invalid mailbox message, code = %d\n",
     req->msg[0]);


   crq->desc[crq->next_to_use].flag = 0;
   hclge_mbx_ring_ptr_move_crq(crq);
   continue;
  }

  vport = &hdev->vport[req->mbx_src_vfid];

  switch (req->msg[0]) {
  case 139:
   ret = hclge_map_unmap_ring_to_vf_vector(vport, 1,
        req);
   break;
  case 128:
   ret = hclge_map_unmap_ring_to_vf_vector(vport, 0,
        req);
   break;
  case 131:
   ret = hclge_set_vf_promisc_mode(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF fail(%d) to set VF promisc mode\n",
     ret);
   break;
  case 130:
   ret = hclge_set_vf_uc_mac_addr(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF fail(%d) to set VF UC MAC Addr\n",
     ret);
   break;
  case 132:
   ret = hclge_set_vf_mc_mac_addr(vport, req, 0);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF fail(%d) to set VF MC MAC Addr\n",
     ret);
   break;
  case 129:
   ret = hclge_set_vf_vlan_cfg(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF failed(%d) to config VF's VLAN\n",
     ret);
   break;
  case 134:
   ret = hclge_set_vf_alive(vport, req, 0);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF failed(%d) to set VF's ALIVE\n",
     ret);
   break;
  case 144:
   ret = hclge_get_vf_queue_info(vport, req, 1);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF failed(%d) to get Q info for VF\n",
     ret);
   break;
  case 146:
   ret = hclge_get_vf_queue_depth(vport, req, 1);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF failed(%d) to get Q depth for VF\n",
     ret);
   break;

  case 142:
   ret = hclge_get_vf_tcinfo(vport, req, 1);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF failed(%d) to get TC info for VF\n",
     ret);
   break;
  case 148:
   ret = hclge_get_link_info(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF fail(%d) to get link stat for VF\n",
     ret);
   break;
  case 136:
   hclge_mbx_reset_vf_queue(vport, req);
   break;
  case 135:
   hclge_reset_vf(vport, req);
   break;
  case 140:
   hclge_vf_keep_alive(vport, req);
   break;
  case 133:
   ret = hclge_set_vf_mtu(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "VF fail(%d) to set mtu\n", ret);
   break;
  case 145:
   ret = hclge_get_queue_id_in_pf(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF failed(%d) to get qid for VF\n",
     ret);
   break;
  case 143:
   ret = hclge_get_rss_key(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF fail(%d) to get rss key for VF\n",
     ret);
   break;
  case 149:
   hclge_get_link_mode(vport, req);
   break;
  case 141:
   mutex_lock(&hdev->vport_cfg_mutex);
   hclge_rm_vport_all_mac_table(vport, 1,
           HCLGE_MAC_ADDR_UC);
   hclge_rm_vport_all_mac_table(vport, 1,
           HCLGE_MAC_ADDR_MC);
   hclge_rm_vport_all_vlan_table(vport, 1);
   mutex_unlock(&hdev->vport_cfg_mutex);
   break;
  case 147:
   ret = hclge_get_vf_media_type(vport, req);
   if (ret)
    dev_err(&hdev->pdev->dev,
     "PF fail(%d) to media type for VF\n",
     ret);
   break;
  case 137:
   hclge_handle_link_change_event(hdev, req);
   break;
  case 138:
   hclge_handle_ncsi_error(hdev);
   break;
  default:
   dev_err(&hdev->pdev->dev,
    "un-supported mailbox message, code = %d\n",
    req->msg[0]);
   break;
  }
  crq->desc[crq->next_to_use].flag = 0;
  hclge_mbx_ring_ptr_move_crq(crq);
 }


 hclge_write_dev(&hdev->hw, HCLGE_NIC_CRQ_HEAD_REG, crq->next_to_use);
}
