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
struct ef4_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  PCS_FW_HEARTBEAT_REG ; 
 int PCS_FW_HEARTB_LBN ; 
 int PCS_FW_HEARTB_WIDTH ; 
 int /*<<< orphan*/  QT2025C_HEARTB_WAIT ; 
 unsigned long QT2025C_MAX_HEARTB_TIME ; 
 int FUNC0 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ef4_nic *efx)
{
	unsigned long timeout = jiffies + QT2025C_MAX_HEARTB_TIME;
	int reg, old_counter = 0;

	/* Wait for firmware heartbeat to start */
	for (;;) {
		int counter;
		reg = FUNC0(efx, MDIO_MMD_PCS, PCS_FW_HEARTBEAT_REG);
		if (reg < 0)
			return reg;
		counter = ((reg >> PCS_FW_HEARTB_LBN) &
			    ((1 << PCS_FW_HEARTB_WIDTH) - 1));
		if (old_counter == 0)
			old_counter = counter;
		else if (counter != old_counter)
			break;
		if (FUNC3(jiffies, timeout)) {
			/* Some cables have EEPROMs that conflict with the
			 * PHY's on-board EEPROM so it cannot load firmware */
			FUNC2(efx, hw, efx->net_dev,
				  "If an SFP+ direct attach cable is"
				  " connected, please check that it complies"
				  " with the SFP+ specification\n");
			return -ETIMEDOUT;
		}
		FUNC1(QT2025C_HEARTB_WAIT);
	}

	return 0;
}