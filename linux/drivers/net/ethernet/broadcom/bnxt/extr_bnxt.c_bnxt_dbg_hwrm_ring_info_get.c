
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hwrm_dbg_ring_info_get_output {int consumer_index; int producer_index; } ;
struct hwrm_dbg_ring_info_get_input {int fw_ring_id; int ring_type; int member_0; } ;
struct bnxt {int hwrm_cmd_lock; struct hwrm_dbg_ring_info_get_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_DBG_RING_INFO_GET ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_dbg_ring_info_get_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_dbg_ring_info_get_input*,int ,int,int) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_dbg_hwrm_ring_info_get(struct bnxt *bp, u8 ring_type,
           u32 ring_id, u32 *prod, u32 *cons)
{
 struct hwrm_dbg_ring_info_get_output *resp = bp->hwrm_cmd_resp_addr;
 struct hwrm_dbg_ring_info_get_input req = {0};
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_DBG_RING_INFO_GET, -1, -1);
 req.ring_type = ring_type;
 req.fw_ring_id = cpu_to_le32(ring_id);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc) {
  *prod = le32_to_cpu(resp->producer_index);
  *cons = le32_to_cpu(resp->consumer_index);
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
