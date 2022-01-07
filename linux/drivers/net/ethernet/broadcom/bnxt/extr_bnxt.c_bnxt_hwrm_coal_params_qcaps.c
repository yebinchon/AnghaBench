
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_ring_aggint_qcaps_output {int timer_units; int num_cmpl_aggr_int_max; int int_lat_tmr_max_max; int int_lat_tmr_min_max; int cmpl_aggr_dma_tmr_during_int_max; int cmpl_aggr_dma_tmr_max; int num_cmpl_dma_aggr_during_int_max; int num_cmpl_dma_aggr_max; int nq_params; int cmpl_params; } ;
struct hwrm_ring_aggint_qcaps_input {int member_0; } ;
struct bnxt_coal_cap {int num_cmpl_dma_aggr_max; int num_cmpl_dma_aggr_during_int_max; int cmpl_aggr_dma_tmr_max; int cmpl_aggr_dma_tmr_during_int_max; int int_lat_tmr_min_max; int int_lat_tmr_max_max; int num_cmpl_aggr_int_max; int timer_units; void* nq_params; void* cmpl_params; } ;
struct bnxt {int hwrm_spec_code; int hwrm_cmd_lock; struct bnxt_coal_cap coal_cap; struct hwrm_ring_aggint_qcaps_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 void* BNXT_LEGACY_COAL_CMPL_PARAMS ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_RING_AGGINT_QCAPS ;
 int _hwrm_send_message_silent (struct bnxt*,struct hwrm_ring_aggint_qcaps_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_ring_aggint_qcaps_input*,int ,int,int) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void bnxt_hwrm_coal_params_qcaps(struct bnxt *bp)
{
 struct hwrm_ring_aggint_qcaps_output *resp = bp->hwrm_cmd_resp_addr;
 struct bnxt_coal_cap *coal_cap = &bp->coal_cap;
 struct hwrm_ring_aggint_qcaps_input req = {0};
 int rc;

 coal_cap->cmpl_params = BNXT_LEGACY_COAL_CMPL_PARAMS;
 coal_cap->num_cmpl_dma_aggr_max = 63;
 coal_cap->num_cmpl_dma_aggr_during_int_max = 63;
 coal_cap->cmpl_aggr_dma_tmr_max = 65535;
 coal_cap->cmpl_aggr_dma_tmr_during_int_max = 65535;
 coal_cap->int_lat_tmr_min_max = 65535;
 coal_cap->int_lat_tmr_max_max = 65535;
 coal_cap->num_cmpl_aggr_int_max = 65535;
 coal_cap->timer_units = 80;

 if (bp->hwrm_spec_code < 0x10902)
  return;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_RING_AGGINT_QCAPS, -1, -1);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message_silent(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc) {
  coal_cap->cmpl_params = le32_to_cpu(resp->cmpl_params);
  coal_cap->nq_params = le32_to_cpu(resp->nq_params);
  coal_cap->num_cmpl_dma_aggr_max =
   le16_to_cpu(resp->num_cmpl_dma_aggr_max);
  coal_cap->num_cmpl_dma_aggr_during_int_max =
   le16_to_cpu(resp->num_cmpl_dma_aggr_during_int_max);
  coal_cap->cmpl_aggr_dma_tmr_max =
   le16_to_cpu(resp->cmpl_aggr_dma_tmr_max);
  coal_cap->cmpl_aggr_dma_tmr_during_int_max =
   le16_to_cpu(resp->cmpl_aggr_dma_tmr_during_int_max);
  coal_cap->int_lat_tmr_min_max =
   le16_to_cpu(resp->int_lat_tmr_min_max);
  coal_cap->int_lat_tmr_max_max =
   le16_to_cpu(resp->int_lat_tmr_max_max);
  coal_cap->num_cmpl_aggr_int_max =
   le16_to_cpu(resp->num_cmpl_aggr_int_max);
  coal_cap->timer_units = le16_to_cpu(resp->timer_units);
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
}
