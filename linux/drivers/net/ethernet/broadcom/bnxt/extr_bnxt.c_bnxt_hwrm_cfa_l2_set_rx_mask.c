
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hwrm_cfa_l2_set_rx_mask_input {void* mask; int mc_tbl_addr; void* num_mc_entries; void* vnic_id; int member_0; } ;
struct bnxt_vnic_info {int rx_mask; int mc_list_mapping; int mc_list_count; int fw_vnic_id; } ;
struct bnxt {struct bnxt_vnic_info* vnic_info; } ;
typedef int req ;


 int HWRM_CFA_L2_SET_RX_MASK ;
 int HWRM_CMD_TIMEOUT ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_cfa_l2_set_rx_mask_input*,int ,int,int) ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_cfa_l2_set_rx_mask_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_cfa_l2_set_rx_mask(struct bnxt *bp, u16 vnic_id)
{
 struct hwrm_cfa_l2_set_rx_mask_input req = {0};
 struct bnxt_vnic_info *vnic = &bp->vnic_info[vnic_id];

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_CFA_L2_SET_RX_MASK, -1, -1);
 req.vnic_id = cpu_to_le32(vnic->fw_vnic_id);

 req.num_mc_entries = cpu_to_le32(vnic->mc_list_count);
 req.mc_tbl_addr = cpu_to_le64(vnic->mc_list_mapping);
 req.mask = cpu_to_le32(vnic->rx_mask);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
