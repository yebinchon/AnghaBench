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
typedef  int u16 ;
struct hwrm_port_phy_mdio_read_output {int /*<<< orphan*/  reg_data; } ;
struct hwrm_port_phy_mdio_read_input {int phy_addr; int cl45_mdio; void* reg_addr; int /*<<< orphan*/  dev_addr; void* port_id; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int port_id; } ;
struct bnxt {int hwrm_spec_code; int /*<<< orphan*/  hwrm_cmd_lock; TYPE_1__ pf; struct hwrm_port_phy_mdio_read_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_PORT_PHY_MDIO_READ ; 
 int FUNC0 (struct bnxt*,struct hwrm_port_phy_mdio_read_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_port_phy_mdio_read_input*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct bnxt *bp, u16 phy_addr, u16 reg,
				   u16 *val)
{
	struct hwrm_port_phy_mdio_read_output *resp = bp->hwrm_cmd_resp_addr;
	struct hwrm_port_phy_mdio_read_input req = {0};
	int rc;

	if (bp->hwrm_spec_code < 0x10a00)
		return -EOPNOTSUPP;

	FUNC1(bp, &req, HWRM_PORT_PHY_MDIO_READ, -1, -1);
	req.port_id = FUNC2(bp->pf.port_id);
	req.phy_addr = phy_addr;
	req.reg_addr = FUNC2(reg & 0x1f);
	if (FUNC5(phy_addr)) {
		req.cl45_mdio = 1;
		req.phy_addr = FUNC6(phy_addr);
		req.dev_addr = FUNC4(phy_addr);
		req.reg_addr = FUNC2(reg);
	}

	FUNC7(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc)
		*val = FUNC3(resp->reg_data);
	FUNC8(&bp->hwrm_cmd_lock);
	return rc;
}