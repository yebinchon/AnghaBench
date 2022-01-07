
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hwrm_tunnel_dst_port_alloc_output {int tunnel_dst_port_id; } ;
struct hwrm_tunnel_dst_port_alloc_input {int tunnel_type; int tunnel_dst_port_val; int member_0; } ;
struct bnxt {int hwrm_cmd_lock; int nge_fw_dst_port_id; int vxlan_fw_dst_port_id; int dev; struct hwrm_tunnel_dst_port_alloc_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
typedef int __be16 ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_TUNNEL_DST_PORT_ALLOC ;


 int _hwrm_send_message (struct bnxt*,struct hwrm_tunnel_dst_port_alloc_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_tunnel_dst_port_alloc_input*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int bnxt_hwrm_tunnel_dst_port_alloc(struct bnxt *bp, __be16 port,
        u8 tunnel_type)
{
 u32 rc = 0;
 struct hwrm_tunnel_dst_port_alloc_input req = {0};
 struct hwrm_tunnel_dst_port_alloc_output *resp = bp->hwrm_cmd_resp_addr;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_TUNNEL_DST_PORT_ALLOC, -1, -1);

 req.tunnel_type = tunnel_type;
 req.tunnel_dst_port_val = port;

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc) {
  netdev_err(bp->dev, "hwrm_tunnel_dst_port_alloc failed. rc:%d\n",
      rc);
  goto err_out;
 }

 switch (tunnel_type) {
 case 128:
  bp->vxlan_fw_dst_port_id = resp->tunnel_dst_port_id;
  break;
 case 129:
  bp->nge_fw_dst_port_id = resp->tunnel_dst_port_id;
  break;
 default:
  break;
 }

err_out:
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
