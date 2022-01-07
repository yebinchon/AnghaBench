
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_10__ {scalar_t__* minor_ver_arr; int * major_ver_arr; } ;
struct vf_start_ramrod_data {TYPE_5__ hsi_fp_ver; int personality; int opaque_fid; int vf_id; } ;
struct TYPE_8__ {scalar_t__ eth_fp_hsi_minor; } ;
struct TYPE_9__ {TYPE_3__ vfdev_info; } ;
struct qed_vf_info {int abs_vf_id; TYPE_4__ acquire; int opaque_fid; int concrete_fid; } ;
struct TYPE_6__ {struct vf_start_ramrod_data vf_start; } ;
struct qed_spq_entry {TYPE_1__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_7__ {int personality; } ;
struct qed_hwfn {TYPE_2__ hw_info; } ;
typedef int init_data ;


 int COMMON_RAMROD_VF_START ;
 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,scalar_t__,...) ;
 int EINVAL ;
 int ETH_HSI_VER_MAJOR ;
 scalar_t__ ETH_HSI_VER_MINOR ;
 scalar_t__ ETH_HSI_VER_NO_PKT_LEN_TUNN ;
 size_t ETH_VER_KEY ;
 int GET_FIELD (int ,int ) ;
 int PERSONALITY_ETH ;
 int PERSONALITY_RDMA_AND_ETH ;
 int PROTOCOLID_COMMON ;
 int PXP_CONCRETE_FID_VFID ;
 int QED_MSG_IOV ;


 int QED_SPQ_MODE_EBLOCK ;
 int cpu_to_le16 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_destroy_request (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_sp_vf_start(struct qed_hwfn *p_hwfn, struct qed_vf_info *p_vf)
{
 struct vf_start_ramrod_data *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = -EINVAL;
 u8 fp_minor;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_vf->opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     COMMON_RAMROD_VF_START,
     PROTOCOLID_COMMON, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.vf_start;

 p_ramrod->vf_id = GET_FIELD(p_vf->concrete_fid, PXP_CONCRETE_FID_VFID);
 p_ramrod->opaque_fid = cpu_to_le16(p_vf->opaque_fid);

 switch (p_hwfn->hw_info.personality) {
 case 129:
  p_ramrod->personality = PERSONALITY_ETH;
  break;
 case 128:
  p_ramrod->personality = PERSONALITY_RDMA_AND_ETH;
  break;
 default:
  DP_NOTICE(p_hwfn, "Unknown VF personality %d\n",
     p_hwfn->hw_info.personality);
  qed_sp_destroy_request(p_hwfn, p_ent);
  return -EINVAL;
 }

 fp_minor = p_vf->acquire.vfdev_info.eth_fp_hsi_minor;
 if (fp_minor > ETH_HSI_VER_MINOR &&
     fp_minor != ETH_HSI_VER_NO_PKT_LEN_TUNN) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "VF [%d] - Requested fp hsi %02x.%02x which is slightly newer than PF's %02x.%02x; Configuring PFs version\n",
      p_vf->abs_vf_id,
      ETH_HSI_VER_MAJOR,
      fp_minor, ETH_HSI_VER_MAJOR, ETH_HSI_VER_MINOR);
  fp_minor = ETH_HSI_VER_MINOR;
 }

 p_ramrod->hsi_fp_ver.major_ver_arr[ETH_VER_KEY] = ETH_HSI_VER_MAJOR;
 p_ramrod->hsi_fp_ver.minor_ver_arr[ETH_VER_KEY] = fp_minor;

 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "VF[%d] - Starting using HSI %02x.%02x\n",
     p_vf->abs_vf_id, ETH_HSI_VER_MAJOR, fp_minor);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
