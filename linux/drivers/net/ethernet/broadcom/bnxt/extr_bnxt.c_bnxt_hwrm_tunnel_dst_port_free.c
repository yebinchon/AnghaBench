
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hwrm_tunnel_dst_port_free_input {int tunnel_type; int tunnel_dst_port_id; int member_0; } ;
struct bnxt {int dev; int nge_fw_dst_port_id; int vxlan_fw_dst_port_id; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_TUNNEL_DST_PORT_FREE ;


 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_tunnel_dst_port_free_input*,int ,int,int) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_tunnel_dst_port_free_input*,int,int ) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int bnxt_hwrm_tunnel_dst_port_free(struct bnxt *bp, u8 tunnel_type)
{
 u32 rc = 0;
 struct hwrm_tunnel_dst_port_free_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_TUNNEL_DST_PORT_FREE, -1, -1);
 req.tunnel_type = tunnel_type;

 switch (tunnel_type) {
 case 128:
  req.tunnel_dst_port_id = bp->vxlan_fw_dst_port_id;
  break;
 case 129:
  req.tunnel_dst_port_id = bp->nge_fw_dst_port_id;
  break;
 default:
  break;
 }

 rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc)
  netdev_err(bp->dev, "hwrm_tunnel_dst_port_free failed. rc:%d\n",
      rc);
 return rc;
}
