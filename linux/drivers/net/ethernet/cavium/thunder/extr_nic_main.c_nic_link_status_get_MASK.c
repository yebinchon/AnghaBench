#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mac_type; int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; int /*<<< orphan*/  link_up; int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ link_status; } ;
typedef  size_t u8 ;
struct nicpf {int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;
struct bgx_link_status {int /*<<< orphan*/  mac_type; int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; int /*<<< orphan*/  link_up; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_BGX_LINK_CHANGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t,struct bgx_link_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct nicpf*,size_t,union nic_mbx*) ; 

__attribute__((used)) static void FUNC4(struct nicpf *nic, u8 vf)
{
	union nic_mbx mbx = {};
	struct bgx_link_status link;
	u8 bgx, lmac;

	mbx.link_status.msg = NIC_MBOX_MSG_BGX_LINK_CHANGE;

	/* Get BGX, LMAC indices for the VF */
	bgx = FUNC0(nic->vf_lmac_map[vf]);
	lmac = FUNC1(nic->vf_lmac_map[vf]);

	/* Get interface link status */
	FUNC2(nic->node, bgx, lmac, &link);

	/* Send a mbox message to VF with current link status */
	mbx.link_status.link_up = link.link_up;
	mbx.link_status.duplex = link.duplex;
	mbx.link_status.speed = link.speed;
	mbx.link_status.mac_type = link.mac_type;

	/* reply with link status */
	FUNC3(nic, vf, &mbx);
}