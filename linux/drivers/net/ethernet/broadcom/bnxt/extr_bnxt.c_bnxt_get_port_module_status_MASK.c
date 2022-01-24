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
typedef  int u8 ;
struct hwrm_port_phy_qcfg_output {int /*<<< orphan*/  phy_vendor_partnumber; } ;
struct bnxt_link_info {int module_status; struct hwrm_port_phy_qcfg_output phy_qcfg_resp; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_id; } ;
struct bnxt {int hwrm_spec_code; int /*<<< orphan*/  dev; TYPE_1__ pf; struct bnxt_link_info link_info; } ;

/* Variables and functions */
#define  PORT_PHY_QCFG_RESP_MODULE_STATUS_DISABLETX 130 
#define  PORT_PHY_QCFG_RESP_MODULE_STATUS_PWRDOWN 129 
#define  PORT_PHY_QCFG_RESP_MODULE_STATUS_WARNINGMSG 128 
 scalar_t__ FUNC0 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC2(struct bnxt *bp)
{
	struct bnxt_link_info *link_info = &bp->link_info;
	struct hwrm_port_phy_qcfg_output *resp = &link_info->phy_qcfg_resp;
	u8 module_status;

	if (FUNC0(bp, true))
		return;

	module_status = link_info->module_status;
	switch (module_status) {
	case PORT_PHY_QCFG_RESP_MODULE_STATUS_DISABLETX:
	case PORT_PHY_QCFG_RESP_MODULE_STATUS_PWRDOWN:
	case PORT_PHY_QCFG_RESP_MODULE_STATUS_WARNINGMSG:
		FUNC1(bp->dev, "Unqualified SFP+ module detected on port %d\n",
			    bp->pf.port_id);
		if (bp->hwrm_spec_code >= 0x10201) {
			FUNC1(bp->dev, "Module part number %s\n",
				    resp->phy_vendor_partnumber);
		}
		if (module_status == PORT_PHY_QCFG_RESP_MODULE_STATUS_DISABLETX)
			FUNC1(bp->dev, "TX is disabled\n");
		if (module_status == PORT_PHY_QCFG_RESP_MODULE_STATUS_PWRDOWN)
			FUNC1(bp->dev, "SFP+ module is shutdown\n");
	}
}