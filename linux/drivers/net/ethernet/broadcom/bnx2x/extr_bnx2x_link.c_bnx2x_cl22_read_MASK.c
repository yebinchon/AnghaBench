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
typedef  int u32 ;
typedef  int u16 ;
struct bnx2x_phy {int addr; scalar_t__ mdio_ctrl; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EFAULT ; 
 int EMAC_MDIO_COMM_COMMAND_READ_22 ; 
 int EMAC_MDIO_COMM_DATA ; 
 int EMAC_MDIO_COMM_START_BUSY ; 
 int EMAC_MDIO_MODE_CLAUSE_45 ; 
 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ; 
 scalar_t__ EMAC_REG_EMAC_MDIO_MODE ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int FUNC1 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp,
				      struct bnx2x_phy *phy,
				      u16 reg, u16 *ret_val)
{
	u32 val, mode;
	u16 i;
	int rc = 0;

	/* Switch to CL22 */
	mode = FUNC1(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE);
	FUNC2(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE,
	       mode & ~EMAC_MDIO_MODE_CLAUSE_45);

	/* Address */
	val = ((phy->addr << 21) | (reg << 16) |
	       EMAC_MDIO_COMM_COMMAND_READ_22 |
	       EMAC_MDIO_COMM_START_BUSY);
	FUNC2(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, val);

	for (i = 0; i < 50; i++) {
		FUNC3(10);

		val = FUNC1(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM);
		if (!(val & EMAC_MDIO_COMM_START_BUSY)) {
			*ret_val = (u16)(val & EMAC_MDIO_COMM_DATA);
			FUNC3(5);
			break;
		}
	}
	if (val & EMAC_MDIO_COMM_START_BUSY) {
		FUNC0(NETIF_MSG_LINK, "read phy register failed\n");

		*ret_val = 0;
		rc = -EFAULT;
	}
	FUNC2(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE, mode);
	return rc;
}