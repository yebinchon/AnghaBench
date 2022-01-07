
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef int u8 ;
struct TYPE_12__ {int capabilities; scalar_t__ eth_fp_hsi_minor; scalar_t__ eth_fp_hsi_major; int fw_engineering; int fw_revision; int fw_minor; int fw_major; int os_type; int opaque_fid; } ;
struct vf_pf_resc_request {int num_cids; int num_vlan_filters; int num_mac_filters; void* num_sbs; void* num_txqs; void* num_rxqs; } ;
struct vfpf_acquire_tlv {TYPE_5__ vfdev_info; int bulletin_size; int bulletin_addr; struct vf_pf_resc_request resc_request; } ;
struct TYPE_10__ {int size; int phys; } ;
struct qed_vf_iov {int b_pre_fp_hsi; TYPE_3__ bulletin; int acquire_resp; TYPE_7__* pf2vf_reply; int offset; scalar_t__ b_doorbell_bar; } ;
struct TYPE_9__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__* cdev; TYPE_2__ hw_info; struct qed_vf_iov* vf_iov_info; } ;
struct pf_vf_pfdev_info {int capabilities; scalar_t__ major_fp_hsi; scalar_t__ minor_fp_hsi; int chip_num; int chip_rev; int dev_type; } ;
struct TYPE_13__ {scalar_t__ num_txqs; scalar_t__ num_rxqs; scalar_t__ num_cids; } ;
struct TYPE_11__ {scalar_t__ status; } ;
struct pfvf_acquire_resp_tlv {struct pf_vf_pfdev_info pfdev_info; int bulletin_size; TYPE_6__ resc; TYPE_4__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_14__ {struct pfvf_acquire_resp_tlv acquire_resp; } ;
struct TYPE_8__ {int chip_num; int num_hwfns; int chip_rev; int type; } ;


 int CHANNEL_TLV_ACQUIRE ;
 int CHANNEL_TLV_LIST_END ;
 int DP_ERR (struct qed_hwfn*,char*,scalar_t__) ;
 int DP_INFO (struct qed_hwfn*,char*,...) ;
 int DP_NOTICE (struct qed_hwfn*,char*,...) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ ETH_HSI_VER_MAJOR ;
 scalar_t__ ETH_HSI_VER_MINOR ;
 int FW_ENGINEERING_VERSION ;
 int FW_MAJOR_VERSION ;
 int FW_MINOR_VERSION ;
 int FW_REVISION_VERSION ;
 scalar_t__ IS_LEAD_HWFN (struct qed_hwfn*) ;
 int PFVF_ACQUIRE_CAP_100G ;
 int PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE ;
 int PFVF_ACQUIRE_CAP_QUEUE_QIDS ;
 scalar_t__ PFVF_STATUS_NOT_SUPPORTED ;
 scalar_t__ PFVF_STATUS_NO_RESOURCE ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int QED_ETH_VF_DEFAULT_NUM_CIDS ;
 int QED_ETH_VF_MAX_NUM_CIDS ;
 int QED_ETH_VF_NUM_MAC_FILTERS ;
 int QED_ETH_VF_NUM_VLAN_FILTERS ;
 void* QED_MAX_VF_CHAINS_PER_PF ;
 int QED_MSG_IOV ;
 int VFPF_ACQUIRE_CAP_100G ;
 int VFPF_ACQUIRE_CAP_PHYSICAL_BAR ;
 int VFPF_ACQUIRE_CAP_PRE_FP_HSI ;
 int VFPF_ACQUIRE_CAP_QUEUE_QIDS ;
 int VFPF_ACQUIRE_OS_LINUX ;
 int VF_ACQUIRE_THRESH ;
 int memcpy (int *,struct pfvf_acquire_resp_tlv*,int) ;
 int memset (TYPE_7__*,int ,int) ;
 int qed_add_tlv (struct qed_hwfn*,int *,int ,int) ;
 int qed_send_msg2pf (struct qed_hwfn*,scalar_t__*,int) ;
 int qed_vf_pf_acquire_reduce_resc (struct qed_hwfn*,struct vf_pf_resc_request*,TYPE_6__*) ;
 struct vfpf_acquire_tlv* qed_vf_pf_prep (struct qed_hwfn*,int ,int) ;
 int qed_vf_pf_req_end (struct qed_hwfn*,int) ;

__attribute__((used)) static int qed_vf_pf_acquire(struct qed_hwfn *p_hwfn)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct pfvf_acquire_resp_tlv *resp = &p_iov->pf2vf_reply->acquire_resp;
 struct pf_vf_pfdev_info *pfdev_info = &resp->pfdev_info;
 struct vf_pf_resc_request *p_resc;
 u8 retry_cnt = VF_ACQUIRE_THRESH;
 bool resources_acquired = 0;
 struct vfpf_acquire_tlv *req;
 int rc = 0, attempts = 0;


 req = qed_vf_pf_prep(p_hwfn, CHANNEL_TLV_ACQUIRE, sizeof(*req));
 p_resc = &req->resc_request;


 req->vfdev_info.opaque_fid = p_hwfn->hw_info.opaque_fid;

 p_resc->num_rxqs = QED_MAX_VF_CHAINS_PER_PF;
 p_resc->num_txqs = QED_MAX_VF_CHAINS_PER_PF;
 p_resc->num_sbs = QED_MAX_VF_CHAINS_PER_PF;
 p_resc->num_mac_filters = QED_ETH_VF_NUM_MAC_FILTERS;
 p_resc->num_vlan_filters = QED_ETH_VF_NUM_VLAN_FILTERS;
 p_resc->num_cids = QED_ETH_VF_DEFAULT_NUM_CIDS;

 req->vfdev_info.os_type = VFPF_ACQUIRE_OS_LINUX;
 req->vfdev_info.fw_major = FW_MAJOR_VERSION;
 req->vfdev_info.fw_minor = FW_MINOR_VERSION;
 req->vfdev_info.fw_revision = FW_REVISION_VERSION;
 req->vfdev_info.fw_engineering = FW_ENGINEERING_VERSION;
 req->vfdev_info.eth_fp_hsi_major = ETH_HSI_VER_MAJOR;
 req->vfdev_info.eth_fp_hsi_minor = ETH_HSI_VER_MINOR;


 req->vfdev_info.capabilities |= VFPF_ACQUIRE_CAP_100G;


 if (p_iov->b_doorbell_bar) {
  req->vfdev_info.capabilities |= VFPF_ACQUIRE_CAP_PHYSICAL_BAR |
      VFPF_ACQUIRE_CAP_QUEUE_QIDS;
  p_resc->num_cids = QED_ETH_VF_MAX_NUM_CIDS;
 }


 req->bulletin_addr = p_iov->bulletin.phys;
 req->bulletin_size = p_iov->bulletin.size;


 qed_add_tlv(p_hwfn, &p_iov->offset,
      CHANNEL_TLV_LIST_END, sizeof(struct channel_list_end_tlv));

 while (!resources_acquired) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV, "attempting to acquire resources\n");


  memset(p_iov->pf2vf_reply, 0, sizeof(union pfvf_tlvs));


  rc = qed_send_msg2pf(p_hwfn, &resp->hdr.status, sizeof(*resp));


  if (retry_cnt && rc == -EBUSY) {
   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "VF retrying to acquire due to VPC timeout\n");
   retry_cnt--;
   continue;
  }

  if (rc)
   goto exit;


  memcpy(&p_iov->acquire_resp, resp, sizeof(p_iov->acquire_resp));

  attempts++;

  if (resp->hdr.status == PFVF_STATUS_SUCCESS) {

   if (!(resp->pfdev_info.capabilities &
         PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE)) {




    req->vfdev_info.capabilities |=
        VFPF_ACQUIRE_CAP_PRE_FP_HSI;
   }
   DP_VERBOSE(p_hwfn, QED_MSG_IOV, "resources acquired\n");
   resources_acquired = 1;
  } else if (resp->hdr.status == PFVF_STATUS_NO_RESOURCE &&
      attempts < VF_ACQUIRE_THRESH) {
   qed_vf_pf_acquire_reduce_resc(p_hwfn, p_resc,
            &resp->resc);
  } else if (resp->hdr.status == PFVF_STATUS_NOT_SUPPORTED) {
   if (pfdev_info->major_fp_hsi &&
       (pfdev_info->major_fp_hsi != ETH_HSI_VER_MAJOR)) {
    DP_NOTICE(p_hwfn,
       "PF uses an incompatible fastpath HSI %02x.%02x [VF requires %02x.%02x]. Please change to a VF driver using %02x.xx.\n",
       pfdev_info->major_fp_hsi,
       pfdev_info->minor_fp_hsi,
       ETH_HSI_VER_MAJOR,
       ETH_HSI_VER_MINOR,
       pfdev_info->major_fp_hsi);
    rc = -EINVAL;
    goto exit;
   }

   if (!pfdev_info->major_fp_hsi) {
    if (req->vfdev_info.capabilities &
        VFPF_ACQUIRE_CAP_PRE_FP_HSI) {
     DP_NOTICE(p_hwfn,
        "PF uses very old drivers. Please change to a VF driver using no later than 8.8.x.x.\n");
     rc = -EINVAL;
     goto exit;
    } else {
     DP_INFO(p_hwfn,
      "PF is old - try re-acquire to see if it supports FW-version override\n");
     req->vfdev_info.capabilities |=
         VFPF_ACQUIRE_CAP_PRE_FP_HSI;
     continue;
    }
   }




   DP_NOTICE(p_hwfn, "PF rejected acquisition by VF\n");
   rc = -EINVAL;
   goto exit;
  } else {
   DP_ERR(p_hwfn,
          "PF returned error %d to VF acquisition request\n",
          resp->hdr.status);
   rc = -EAGAIN;
   goto exit;
  }
 }


 if (req->vfdev_info.capabilities & VFPF_ACQUIRE_CAP_PRE_FP_HSI)
  p_iov->b_pre_fp_hsi = 1;





 if (!(resp->pfdev_info.capabilities & PFVF_ACQUIRE_CAP_QUEUE_QIDS))
  resp->resc.num_cids = resp->resc.num_rxqs + resp->resc.num_txqs;


 p_iov->bulletin.size = resp->bulletin_size;


 p_hwfn->cdev->type = resp->pfdev_info.dev_type;
 p_hwfn->cdev->chip_rev = resp->pfdev_info.chip_rev;

 p_hwfn->cdev->chip_num = pfdev_info->chip_num & 0xffff;


 if (IS_LEAD_HWFN(p_hwfn)) {
  if (resp->pfdev_info.capabilities & PFVF_ACQUIRE_CAP_100G) {
   DP_NOTICE(p_hwfn, "100g VF\n");
   p_hwfn->cdev->num_hwfns = 2;
  }
 }

 if (!p_iov->b_pre_fp_hsi &&
     (resp->pfdev_info.minor_fp_hsi < ETH_HSI_VER_MINOR)) {
  DP_INFO(p_hwfn,
   "PF is using older fastpath HSI; %02x.%02x is configured\n",
   ETH_HSI_VER_MAJOR, resp->pfdev_info.minor_fp_hsi);
 }

exit:
 qed_vf_pf_req_end(p_hwfn, rc);

 return rc;
}
