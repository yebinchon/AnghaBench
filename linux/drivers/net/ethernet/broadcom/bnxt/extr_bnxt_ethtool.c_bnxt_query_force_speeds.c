
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hwrm_port_phy_qcaps_output {int supported_speeds_force_mode; } ;
struct hwrm_port_phy_qcaps_input {int member_0; } ;
struct bnxt {int hwrm_cmd_lock; struct hwrm_port_phy_qcaps_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_PHY_QCAPS ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_port_phy_qcaps_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_phy_qcaps_input*,int ,int,int) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_query_force_speeds(struct bnxt *bp, u16 *force_speeds)
{
 struct hwrm_port_phy_qcaps_output *resp = bp->hwrm_cmd_resp_addr;
 struct hwrm_port_phy_qcaps_input req = {0};
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_PHY_QCAPS, -1, -1);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc)
  *force_speeds = le16_to_cpu(resp->supported_speeds_force_mode);

 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
