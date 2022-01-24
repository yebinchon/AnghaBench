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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sxgbe_priv_data {int /*<<< orphan*/  ioaddr; TYPE_1__* hw; } ;
struct mii_regs {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct mii_regs mii; } ;

/* Variables and functions */
 int ENODEV ; 
 int MII_ADDR_C45 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sxgbe_priv_data*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sxgbe_priv_data*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sxgbe_priv_data *sp, u32 cmd, int phyaddr,
			     int phyreg, u16 phydata)
{
	const struct mii_regs *mii = &sp->hw->mii;
	int rc;

	rc = FUNC0(sp->ioaddr, mii->data);
	if (rc < 0)
		return rc;

	if (phyreg & MII_ADDR_C45) {
		FUNC2(sp, cmd, phyaddr, phyreg, phydata);
	} else {
		 /* Ports 0-3 only support C22. */
		if (phyaddr >= 4)
			return -ENODEV;

		FUNC1(sp, cmd, phyaddr, phyreg, phydata);
	}

	return FUNC0(sp->ioaddr, mii->data);
}