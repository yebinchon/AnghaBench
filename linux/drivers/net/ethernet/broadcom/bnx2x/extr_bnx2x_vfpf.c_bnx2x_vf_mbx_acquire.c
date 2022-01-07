
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int caps; int fp_hsi_ver; int vf_os; int vf_id; } ;
struct TYPE_8__ {int num_mc_filters; int num_vlan_filters; int num_mac_filters; int num_sbs; int num_txqs; int num_rxqs; } ;
struct vfpf_acquire_tlv {TYPE_3__ vfdev_info; int bulletin_addr; TYPE_4__ resc_request; } ;
struct bnx2x_virtf {int cfg_flags; int abs_vfid; int bulletin_map; int fp_hsi; } ;
struct bnx2x_vf_mbx {TYPE_2__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_5__ {struct vfpf_acquire_tlv acquire; } ;
struct TYPE_6__ {TYPE_1__ req; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ,...) ;
 int EINVAL ;
 int ETH_FP_HSI_VERSION ;
 int ETH_FP_HSI_VER_2 ;
 int VF_CAP_SUPPORT_EXT_BULLETIN ;
 int VF_CAP_SUPPORT_VLAN_FILTER ;
 int VF_CFG_EXT_BULLETIN ;
 int VF_CFG_VLAN_FILTER ;
 int bnx2x_vf_acquire (struct bnx2x*,struct bnx2x_virtf*,TYPE_4__*) ;
 int bnx2x_vf_mbx_acquire_chk_dorq (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*) ;
 int bnx2x_vf_mbx_acquire_resp (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vf_mbx*,int) ;
 scalar_t__ bnx2x_vf_mbx_is_windows_vm (struct bnx2x*,struct vfpf_acquire_tlv*) ;
 int max_t (int ,int ,int ) ;
 int u8 ;

__attribute__((used)) static void bnx2x_vf_mbx_acquire(struct bnx2x *bp, struct bnx2x_virtf *vf,
     struct bnx2x_vf_mbx *mbx)
{
 int rc;
 struct vfpf_acquire_tlv *acquire = &mbx->msg->req.acquire;


 DP(BNX2X_MSG_IOV,
    "VF[%d] ACQUIRE: vfdev_info- vf_id %d, vf_os %d resources- n_rxq-%d, n_txq-%d, n_sbs-%d, n_macs-%d, n_vlans-%d, n_mcs-%d\n",
    vf->abs_vfid, acquire->vfdev_info.vf_id, acquire->vfdev_info.vf_os,
    acquire->resc_request.num_rxqs, acquire->resc_request.num_txqs,
    acquire->resc_request.num_sbs, acquire->resc_request.num_mac_filters,
    acquire->resc_request.num_vlan_filters,
    acquire->resc_request.num_mc_filters);





 rc = bnx2x_vf_mbx_acquire_chk_dorq(bp, vf, mbx);
 if (rc) {
  DP(BNX2X_MSG_IOV,
     "VF [%d] - Can't support acquire request due to doorbell mismatch. Please update VM driver\n",
     vf->abs_vfid);
  goto out;
 }




 if (bnx2x_vf_mbx_is_windows_vm(bp, &mbx->msg->req.acquire))
  vf->fp_hsi = acquire->vfdev_info.fp_hsi_ver;
 else
  vf->fp_hsi = max_t(u8, acquire->vfdev_info.fp_hsi_ver,
       ETH_FP_HSI_VER_2);
 if (vf->fp_hsi > ETH_FP_HSI_VERSION) {
  DP(BNX2X_MSG_IOV,
     "VF [%d] - Can't support acquire request since VF requests a FW version which is too new [%02x > %02x]\n",
     vf->abs_vfid, acquire->vfdev_info.fp_hsi_ver,
     ETH_FP_HSI_VERSION);
  rc = -EINVAL;
  goto out;
 }


 rc = bnx2x_vf_acquire(bp, vf, &acquire->resc_request);


 vf->bulletin_map = acquire->bulletin_addr;
 if (acquire->vfdev_info.caps & VF_CAP_SUPPORT_EXT_BULLETIN) {
  DP(BNX2X_MSG_IOV, "VF[%d] supports long bulletin boards\n",
     vf->abs_vfid);
  vf->cfg_flags |= VF_CFG_EXT_BULLETIN;
 } else {
  vf->cfg_flags &= ~VF_CFG_EXT_BULLETIN;
 }

 if (acquire->vfdev_info.caps & VF_CAP_SUPPORT_VLAN_FILTER) {
  DP(BNX2X_MSG_IOV, "VF[%d] supports vlan filtering\n",
     vf->abs_vfid);
  vf->cfg_flags |= VF_CFG_VLAN_FILTER;
 } else {
  vf->cfg_flags &= ~VF_CFG_VLAN_FILTER;
 }

out:

 bnx2x_vf_mbx_acquire_resp(bp, vf, mbx, rc);
}
