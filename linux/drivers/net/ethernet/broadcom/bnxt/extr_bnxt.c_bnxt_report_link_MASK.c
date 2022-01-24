#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ duplex; scalar_t__ pause; int fec_cfg; int /*<<< orphan*/  link_speed; scalar_t__ link_up; } ;
struct TYPE_3__ {scalar_t__ eee_active; } ;
struct bnxt {int flags; int /*<<< orphan*/  dev; TYPE_2__ link_info; TYPE_1__ eee; } ;

/* Variables and functions */
 int BNXT_FEC_AUTONEG ; 
 int BNXT_FEC_ENC_BASE_R ; 
 int BNXT_FEC_ENC_RS ; 
 int BNXT_FLAG_EEE_CAP ; 
 scalar_t__ BNXT_LINK_DUPLEX_FULL ; 
 scalar_t__ BNXT_LINK_PAUSE_BOTH ; 
 scalar_t__ BNXT_LINK_PAUSE_RX ; 
 scalar_t__ BNXT_LINK_PAUSE_TX ; 
 int PORT_PHY_QCFG_RESP_FEC_CFG_FEC_NONE_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnxt *bp)
{
	if (bp->link_info.link_up) {
		const char *duplex;
		const char *flow_ctrl;
		u32 speed;
		u16 fec;

		FUNC4(bp->dev);
		if (bp->link_info.duplex == BNXT_LINK_DUPLEX_FULL)
			duplex = "full";
		else
			duplex = "half";
		if (bp->link_info.pause == BNXT_LINK_PAUSE_BOTH)
			flow_ctrl = "ON - receive & transmit";
		else if (bp->link_info.pause == BNXT_LINK_PAUSE_TX)
			flow_ctrl = "ON - transmit";
		else if (bp->link_info.pause == BNXT_LINK_PAUSE_RX)
			flow_ctrl = "ON - receive";
		else
			flow_ctrl = "none";
		speed = FUNC0(bp->link_info.link_speed);
		FUNC2(bp->dev, "NIC Link is Up, %u Mbps %s duplex, Flow control: %s\n",
			    speed, duplex, flow_ctrl);
		if (bp->flags & BNXT_FLAG_EEE_CAP)
			FUNC2(bp->dev, "EEE is %s\n",
				    bp->eee.eee_active ? "active" :
							 "not active");
		fec = bp->link_info.fec_cfg;
		if (!(fec & PORT_PHY_QCFG_RESP_FEC_CFG_FEC_NONE_SUPPORTED))
			FUNC2(bp->dev, "FEC autoneg %s encodings: %s\n",
				    (fec & BNXT_FEC_AUTONEG) ? "on" : "off",
				    (fec & BNXT_FEC_ENC_BASE_R) ? "BaseR" :
				     (fec & BNXT_FEC_ENC_RS) ? "RS" : "None");
	} else {
		FUNC3(bp->dev);
		FUNC1(bp->dev, "NIC Link is Down\n");
	}
}