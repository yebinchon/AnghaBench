
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct hwrm_ring_grp_alloc_output {int ring_group_id; } ;
struct hwrm_ring_grp_alloc_input {void* sc; void* ar; void* rr; void* cr; int member_0; } ;
struct bnxt {int flags; size_t rx_nr_rings; int hwrm_cmd_lock; TYPE_3__* grp_info; TYPE_2__* rx_ring; struct hwrm_ring_grp_alloc_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
struct TYPE_6__ {int fw_grp_id; int fw_stats_ctx; int agg_fw_ring_id; int rx_fw_ring_id; int cp_fw_ring_id; } ;
struct TYPE_5__ {TYPE_1__* bnapi; } ;
struct TYPE_4__ {unsigned int index; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_RING_GRP_ALLOC ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_ring_grp_alloc_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_ring_grp_alloc_input*,int ,int,int) ;
 void* cpu_to_le16 (int ) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_ring_grp_alloc(struct bnxt *bp)
{
 u16 i;
 u32 rc = 0;

 if (bp->flags & BNXT_FLAG_CHIP_P5)
  return 0;

 mutex_lock(&bp->hwrm_cmd_lock);
 for (i = 0; i < bp->rx_nr_rings; i++) {
  struct hwrm_ring_grp_alloc_input req = {0};
  struct hwrm_ring_grp_alloc_output *resp =
     bp->hwrm_cmd_resp_addr;
  unsigned int grp_idx = bp->rx_ring[i].bnapi->index;

  bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_RING_GRP_ALLOC, -1, -1);

  req.cr = cpu_to_le16(bp->grp_info[grp_idx].cp_fw_ring_id);
  req.rr = cpu_to_le16(bp->grp_info[grp_idx].rx_fw_ring_id);
  req.ar = cpu_to_le16(bp->grp_info[grp_idx].agg_fw_ring_id);
  req.sc = cpu_to_le16(bp->grp_info[grp_idx].fw_stats_ctx);

  rc = _hwrm_send_message(bp, &req, sizeof(req),
     HWRM_CMD_TIMEOUT);
  if (rc)
   break;

  bp->grp_info[grp_idx].fw_grp_id =
   le32_to_cpu(resp->ring_group_id);
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
