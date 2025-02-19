
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {void* lo; scalar_t__ hi; } ;
struct rdma_register_tid_ramrod_data {TYPE_4__ dif_error_addr; scalar_t__ flags2; TYPE_4__ pbl_base; TYPE_4__ va; int length_lo; scalar_t__ length_hi; int pd; int key; void* itid; scalar_t__ flags1; scalar_t__ flags; } ;
struct TYPE_7__ {struct rdma_register_tid_ramrod_data rdma_register_tid; } ;
struct qed_spq_entry {TYPE_3__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; } ;
struct qed_rdma_register_tid_in_params {int itid; int pbl_two_level; int zbva; int phy_mr; int tid_type; int dma_mr; int page_size_log; int remote_read; int remote_write; int remote_atomic; int local_write; int local_read; int mw_bind; int pbl_page_size_log; int length; scalar_t__ fbo; int dif_error_addr; scalar_t__ dif_enabled; int pbl_ptr; int vaddr; int pd; int key; } ;
struct TYPE_5__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum rdma_tid_type { ____Placeholder_rdma_tid_type } rdma_tid_type ;
struct TYPE_6__ {scalar_t__ last_tid; int proto; } ;


 int DMA_LO_LE (int) ;
 int DMA_REGPAIR_LE (TYPE_4__,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int EINVAL ;
 int QED_MSG_RDMA ;



 int QED_SPQ_MODE_EBLOCK ;
 int RDMA_RAMROD_REGISTER_MR ;
 int RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG ;
 int RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR ;
 int RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND ;
 int RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ ;
 int RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE ;
 int RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG ;
 int RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG ;
 int RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR ;
 int RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC ;
 int RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ ;
 int RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE ;
 int RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE ;
 int RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL ;
 int RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED ;
 scalar_t__ RDMA_RETURN_OK ;
 int RDMA_TID_FMR ;
 int RDMA_TID_MW ;
 int RDMA_TID_REGISTERED_MR ;
 int SET_FIELD (scalar_t__,int ,int) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_destroy_request (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,scalar_t__*) ;

__attribute__((used)) static int
qed_rdma_register_tid(void *rdma_cxt,
        struct qed_rdma_register_tid_in_params *params)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
 struct rdma_register_tid_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 enum rdma_tid_type tid_type;
 u8 fw_return_code;
 int rc;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "itid = %08x\n", params->itid);


 memset(&init_data, 0, sizeof(init_data));
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent, RDMA_RAMROD_REGISTER_MR,
     p_hwfn->p_rdma_info->proto, &init_data);
 if (rc) {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
  return rc;
 }

 if (p_hwfn->p_rdma_info->last_tid < params->itid)
  p_hwfn->p_rdma_info->last_tid = params->itid;

 p_ramrod = &p_ent->ramrod.rdma_register_tid;

 p_ramrod->flags = 0;
 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL,
    params->pbl_two_level);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED, params->zbva);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR, params->phy_mr);


 if (!(params->tid_type == 130) && !(params->dma_mr))
  SET_FIELD(p_ramrod->flags,
     RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG,
     params->page_size_log - 12);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ,
    params->remote_read);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE,
    params->remote_write);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC,
    params->remote_atomic);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE,
    params->local_write);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ, params->local_read);

 SET_FIELD(p_ramrod->flags,
    RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND,
    params->mw_bind);

 SET_FIELD(p_ramrod->flags1,
    RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG,
    params->pbl_page_size_log - 12);

 SET_FIELD(p_ramrod->flags2,
    RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR, params->dma_mr);

 switch (params->tid_type) {
 case 128:
  tid_type = RDMA_TID_REGISTERED_MR;
  break;
 case 130:
  tid_type = RDMA_TID_FMR;
  break;
 case 129:
  tid_type = RDMA_TID_MW;
  break;
 default:
  rc = -EINVAL;
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
  qed_sp_destroy_request(p_hwfn, p_ent);
  return rc;
 }
 SET_FIELD(p_ramrod->flags1,
    RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE, tid_type);

 p_ramrod->itid = cpu_to_le32(params->itid);
 p_ramrod->key = params->key;
 p_ramrod->pd = cpu_to_le16(params->pd);
 p_ramrod->length_hi = (u8)(params->length >> 32);
 p_ramrod->length_lo = DMA_LO_LE(params->length);
 if (params->zbva) {



  p_ramrod->va.hi = 0;
  p_ramrod->va.lo = cpu_to_le32(params->fbo);
 } else {
  DMA_REGPAIR_LE(p_ramrod->va, params->vaddr);
 }
 DMA_REGPAIR_LE(p_ramrod->pbl_base, params->pbl_ptr);


 if (params->dif_enabled) {
  SET_FIELD(p_ramrod->flags2,
     RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG, 1);
  DMA_REGPAIR_LE(p_ramrod->dif_error_addr,
          params->dif_error_addr);
 }

 rc = qed_spq_post(p_hwfn, p_ent, &fw_return_code);
 if (rc)
  return rc;

 if (fw_return_code != RDMA_RETURN_OK) {
  DP_NOTICE(p_hwfn, "fw_return_code = %d\n", fw_return_code);
  return -EINVAL;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Register TID, rc = %d\n", rc);
 return rc;
}
