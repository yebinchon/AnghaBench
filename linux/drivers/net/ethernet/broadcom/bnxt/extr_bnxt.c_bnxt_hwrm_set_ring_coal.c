
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrm_ring_cmpl_ring_cfg_aggint_params_input {int ring_id; int member_0; } ;
struct TYPE_2__ {int coal_bufs; int coal_ticks; } ;
struct bnxt_cp_ring_info {TYPE_1__ rx_ring_coal; } ;
struct bnxt_napi {int rx_ring; struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt_coal {int coal_bufs; int coal_ticks; } ;
struct bnxt {int rx_coal; } ;
typedef int req_rx ;


 int ENODEV ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS ;
 int bnxt_cp_ring_for_rx (struct bnxt*,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*,int ,int,int) ;
 int bnxt_hwrm_set_coal_params (struct bnxt*,struct bnxt_coal*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*) ;
 int cpu_to_le16 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*,int,int ) ;
 int memcpy (struct bnxt_coal*,int *,int) ;

int bnxt_hwrm_set_ring_coal(struct bnxt *bp, struct bnxt_napi *bnapi)
{
 struct hwrm_ring_cmpl_ring_cfg_aggint_params_input req_rx = {0};
 struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;
 struct bnxt_coal coal;




 memcpy(&coal, &bp->rx_coal, sizeof(struct bnxt_coal));

 coal.coal_ticks = cpr->rx_ring_coal.coal_ticks;
 coal.coal_bufs = cpr->rx_ring_coal.coal_bufs;

 if (!bnapi->rx_ring)
  return -ENODEV;

 bnxt_hwrm_cmd_hdr_init(bp, &req_rx,
          HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS, -1, -1);

 bnxt_hwrm_set_coal_params(bp, &coal, &req_rx);

 req_rx.ring_id = cpu_to_le16(bnxt_cp_ring_for_rx(bp, bnapi->rx_ring));

 return hwrm_send_message(bp, &req_rx, sizeof(req_rx),
     HWRM_CMD_TIMEOUT);
}
