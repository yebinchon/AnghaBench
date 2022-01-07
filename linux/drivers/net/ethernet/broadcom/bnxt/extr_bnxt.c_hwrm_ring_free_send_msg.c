
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct hwrm_ring_free_output {int error_code; } ;
struct hwrm_ring_free_input {int ring_id; int ring_type; int member_0; } ;
struct bnxt_ring_struct {int fw_ring_id; } ;
struct bnxt {int dev; int hwrm_cmd_lock; int state; struct hwrm_ring_free_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int BNXT_STATE_FW_FATAL_COND ;
 int EIO ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_RING_FREE ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_ring_free_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_ring_free_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*,int ,int,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hwrm_ring_free_send_msg(struct bnxt *bp,
       struct bnxt_ring_struct *ring,
       u32 ring_type, int cmpl_ring_id)
{
 int rc;
 struct hwrm_ring_free_input req = {0};
 struct hwrm_ring_free_output *resp = bp->hwrm_cmd_resp_addr;
 u16 error_code;

 if (test_bit(BNXT_STATE_FW_FATAL_COND, &bp->state))
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_RING_FREE, cmpl_ring_id, -1);
 req.ring_type = ring_type;
 req.ring_id = cpu_to_le16(ring->fw_ring_id);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 error_code = le16_to_cpu(resp->error_code);
 mutex_unlock(&bp->hwrm_cmd_lock);

 if (rc || error_code) {
  netdev_err(bp->dev, "hwrm_ring_free type %d failed. rc:%x err:%x\n",
      ring_type, rc, error_code);
  return -EIO;
 }
 return 0;
}
