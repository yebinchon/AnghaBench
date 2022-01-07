
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrm_stat_ctx_alloc_output {int stat_ctx_id; } ;
struct hwrm_stat_ctx_alloc_input {int stats_dma_addr; int update_period_ms; int stats_dma_length; int member_0; } ;
struct bnxt_cp_ring_info {int hw_stats_ctx_id; int hw_stats_map; } ;
struct bnxt_napi {struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt {int stats_coal_ticks; int cp_nr_rings; int hwrm_cmd_lock; TYPE_1__* grp_info; struct bnxt_napi** bnapi; int hw_ring_stats_size; struct hwrm_stat_ctx_alloc_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
struct TYPE_2__ {int fw_stats_ctx; } ;


 scalar_t__ BNXT_CHIP_TYPE_NITRO_A0 (struct bnxt*) ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_STAT_CTX_ALLOC ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_stat_ctx_alloc_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_stat_ctx_alloc_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_stat_ctx_alloc(struct bnxt *bp)
{
 int rc = 0, i;
 struct hwrm_stat_ctx_alloc_input req = {0};
 struct hwrm_stat_ctx_alloc_output *resp = bp->hwrm_cmd_resp_addr;

 if (BNXT_CHIP_TYPE_NITRO_A0(bp))
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_STAT_CTX_ALLOC, -1, -1);

 req.stats_dma_length = cpu_to_le16(bp->hw_ring_stats_size);
 req.update_period_ms = cpu_to_le32(bp->stats_coal_ticks / 1000);

 mutex_lock(&bp->hwrm_cmd_lock);
 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_napi *bnapi = bp->bnapi[i];
  struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;

  req.stats_dma_addr = cpu_to_le64(cpr->hw_stats_map);

  rc = _hwrm_send_message(bp, &req, sizeof(req),
     HWRM_CMD_TIMEOUT);
  if (rc)
   break;

  cpr->hw_stats_ctx_id = le32_to_cpu(resp->stat_ctx_id);

  bp->grp_info[i].fw_stats_ctx = cpr->hw_stats_ctx_id;
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
