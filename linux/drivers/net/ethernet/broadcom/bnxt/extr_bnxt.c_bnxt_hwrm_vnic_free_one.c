
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct hwrm_vnic_free_input {int vnic_id; int member_0; } ;
struct bnxt {TYPE_1__* vnic_info; } ;
typedef int req ;
struct TYPE_2__ {scalar_t__ fw_vnic_id; } ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_VNIC_FREE ;
 scalar_t__ INVALID_HW_RING_ID ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_vnic_free_input*,int ,int,int) ;
 int cpu_to_le32 (scalar_t__) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_vnic_free_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_vnic_free_one(struct bnxt *bp, u16 vnic_id)
{
 u32 rc = 0;

 if (bp->vnic_info[vnic_id].fw_vnic_id != INVALID_HW_RING_ID) {
  struct hwrm_vnic_free_input req = {0};

  bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_VNIC_FREE, -1, -1);
  req.vnic_id =
   cpu_to_le32(bp->vnic_info[vnic_id].fw_vnic_id);

  rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
  bp->vnic_info[vnic_id].fw_vnic_id = INVALID_HW_RING_ID;
 }
 return rc;
}
