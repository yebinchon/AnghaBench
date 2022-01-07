
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct hwrm_ring_grp_free_input {int ring_group_id; int member_0; } ;
struct bnxt {int flags; size_t cp_nr_rings; int hwrm_cmd_lock; TYPE_1__* grp_info; } ;
typedef int req ;
struct TYPE_2__ {scalar_t__ fw_grp_id; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_RING_GRP_FREE ;
 scalar_t__ INVALID_HW_RING_ID ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_ring_grp_free_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_ring_grp_free_input*,int ,int,int) ;
 int cpu_to_le32 (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_ring_grp_free(struct bnxt *bp)
{
 u16 i;
 u32 rc = 0;
 struct hwrm_ring_grp_free_input req = {0};

 if (!bp->grp_info || (bp->flags & BNXT_FLAG_CHIP_P5))
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_RING_GRP_FREE, -1, -1);

 mutex_lock(&bp->hwrm_cmd_lock);
 for (i = 0; i < bp->cp_nr_rings; i++) {
  if (bp->grp_info[i].fw_grp_id == INVALID_HW_RING_ID)
   continue;
  req.ring_group_id =
   cpu_to_le32(bp->grp_info[i].fw_grp_id);

  rc = _hwrm_send_message(bp, &req, sizeof(req),
     HWRM_CMD_TIMEOUT);
  bp->grp_info[i].fw_grp_id = INVALID_HW_RING_ID;
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
