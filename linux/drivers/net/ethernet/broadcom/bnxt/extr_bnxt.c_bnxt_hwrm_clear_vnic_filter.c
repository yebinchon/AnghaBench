
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hwrm_cfa_l2_filter_free_input {int l2_filter_id; int member_0; } ;
struct bnxt_vnic_info {size_t uc_filter_count; int * fw_l2_filter_id; } ;
struct bnxt {int hwrm_cmd_lock; struct bnxt_vnic_info* vnic_info; } ;
typedef int req ;


 int HWRM_CFA_L2_FILTER_FREE ;
 int HWRM_CMD_TIMEOUT ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_cfa_l2_filter_free_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_cfa_l2_filter_free_input*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_clear_vnic_filter(struct bnxt *bp)
{
 u16 i, j, num_of_vnics = 1;
 int rc = 0;


 mutex_lock(&bp->hwrm_cmd_lock);
 for (i = 0; i < num_of_vnics; i++) {
  struct bnxt_vnic_info *vnic = &bp->vnic_info[i];

  for (j = 0; j < vnic->uc_filter_count; j++) {
   struct hwrm_cfa_l2_filter_free_input req = {0};

   bnxt_hwrm_cmd_hdr_init(bp, &req,
            HWRM_CFA_L2_FILTER_FREE, -1, -1);

   req.l2_filter_id = vnic->fw_l2_filter_id[j];

   rc = _hwrm_send_message(bp, &req, sizeof(req),
      HWRM_CMD_TIMEOUT);
  }
  vnic->uc_filter_count = 0;
 }
 mutex_unlock(&bp->hwrm_cmd_lock);

 return rc;
}
