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
struct smsc911x_data {int /*<<< orphan*/  mac_lock; } ;
struct mii_bus {scalar_t__ priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MII_ACC ; 
 int MII_ACC_MII_BUSY_ ; 
 int /*<<< orphan*/  MII_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hw ; 
 int FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mii_bus *bus, int phyaddr, int regidx)
{
	struct smsc911x_data *pdata = (struct smsc911x_data *)bus->priv;
	unsigned long flags;
	unsigned int addr;
	int i, reg;

	FUNC3(&pdata->mac_lock, flags);

	/* Confirm MII not busy */
	if (FUNC5(FUNC1(pdata, MII_ACC) & MII_ACC_MII_BUSY_)) {
		FUNC0(pdata, hw, "MII is busy in smsc911x_mii_read???");
		reg = -EIO;
		goto out;
	}

	/* Set the address, index & direction (read from PHY) */
	addr = ((phyaddr & 0x1F) << 11) | ((regidx & 0x1F) << 6);
	FUNC2(pdata, MII_ACC, addr);

	/* Wait for read to complete w/ timeout */
	for (i = 0; i < 100; i++)
		if (!(FUNC1(pdata, MII_ACC) & MII_ACC_MII_BUSY_)) {
			reg = FUNC1(pdata, MII_DATA);
			goto out;
		}

	FUNC0(pdata, hw, "Timed out waiting for MII read to finish");
	reg = -EIO;

out:
	FUNC4(&pdata->mac_lock, flags);
	return reg;
}