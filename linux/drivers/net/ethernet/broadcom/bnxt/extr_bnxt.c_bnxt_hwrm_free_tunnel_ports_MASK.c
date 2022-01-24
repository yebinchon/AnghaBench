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
struct bnxt {scalar_t__ nge_port_cnt; scalar_t__ vxlan_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUNNEL_DST_PORT_FREE_REQ_TUNNEL_TYPE_GENEVE ; 
 int /*<<< orphan*/  TUNNEL_DST_PORT_FREE_REQ_TUNNEL_TYPE_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bnxt *bp)
{
	if (bp->vxlan_port_cnt) {
		FUNC0(
			bp, TUNNEL_DST_PORT_FREE_REQ_TUNNEL_TYPE_VXLAN);
	}
	bp->vxlan_port_cnt = 0;
	if (bp->nge_port_cnt) {
		FUNC0(
			bp, TUNNEL_DST_PORT_FREE_REQ_TUNNEL_TYPE_GENEVE);
	}
	bp->nge_port_cnt = 0;
}