#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct hwrm_tunnel_dst_port_alloc_output {int /*<<< orphan*/  tunnel_dst_port_id; } ;
struct hwrm_tunnel_dst_port_alloc_input {int tunnel_type; int /*<<< orphan*/  tunnel_dst_port_val; int /*<<< orphan*/  member_0; } ;
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; int /*<<< orphan*/  nge_fw_dst_port_id; int /*<<< orphan*/  vxlan_fw_dst_port_id; int /*<<< orphan*/  dev; struct hwrm_tunnel_dst_port_alloc_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_TUNNEL_DST_PORT_ALLOC ; 
#define  TUNNEL_DST_PORT_ALLOC_REQ_TUNNEL_TYPE_GENEVE 129 
#define  TUNNEL_DST_PORT_ALLOC_REQ_TUNNEL_TYPE_VXLAN 128 
 int FUNC0 (struct bnxt*,struct hwrm_tunnel_dst_port_alloc_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_tunnel_dst_port_alloc_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp, __be16 port,
					   u8 tunnel_type)
{
	u32 rc = 0;
	struct hwrm_tunnel_dst_port_alloc_input req = {0};
	struct hwrm_tunnel_dst_port_alloc_output *resp = bp->hwrm_cmd_resp_addr;

	FUNC1(bp, &req, HWRM_TUNNEL_DST_PORT_ALLOC, -1, -1);

	req.tunnel_type = tunnel_type;
	req.tunnel_dst_port_val = port;

	FUNC2(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (rc) {
		FUNC4(bp->dev, "hwrm_tunnel_dst_port_alloc failed. rc:%d\n",
			   rc);
		goto err_out;
	}

	switch (tunnel_type) {
	case TUNNEL_DST_PORT_ALLOC_REQ_TUNNEL_TYPE_VXLAN:
		bp->vxlan_fw_dst_port_id = resp->tunnel_dst_port_id;
		break;
	case TUNNEL_DST_PORT_ALLOC_REQ_TUNNEL_TYPE_GENEVE:
		bp->nge_fw_dst_port_id = resp->tunnel_dst_port_id;
		break;
	default:
		break;
	}

err_out:
	FUNC3(&bp->hwrm_cmd_lock);
	return rc;
}