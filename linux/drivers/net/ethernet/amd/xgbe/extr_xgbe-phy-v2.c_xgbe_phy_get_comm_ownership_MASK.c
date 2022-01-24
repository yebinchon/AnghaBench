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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  ID ; 
 unsigned int XGBE_MUTEX_RELEASE ; 
 int /*<<< orphan*/  XP_I2C_MUTEX ; 
 scalar_t__ FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  XP_MDIO_MUTEX ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  xgbe_phy_comm_lock ; 

__attribute__((used)) static int FUNC8(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;
	unsigned long timeout;
	unsigned int mutex_id;

	/* The I2C and MDIO/GPIO bus is multiplexed between multiple devices,
	 * the driver needs to take the software mutex and then the hardware
	 * mutexes before being able to use the busses.
	 */
	FUNC3(&xgbe_phy_comm_lock);

	/* Clear the mutexes */
	FUNC1(pdata, XP_I2C_MUTEX, XGBE_MUTEX_RELEASE);
	FUNC1(pdata, XP_MDIO_MUTEX, XGBE_MUTEX_RELEASE);

	/* Mutex formats are the same for I2C and MDIO/GPIO */
	mutex_id = 0;
	FUNC2(mutex_id, XP_I2C_MUTEX, ID, phy_data->port_id);
	FUNC2(mutex_id, XP_I2C_MUTEX, ACTIVE, 1);

	timeout = jiffies + (5 * HZ);
	while (FUNC6(jiffies, timeout)) {
		/* Must be all zeroes in order to obtain the mutex */
		if (FUNC0(pdata, XP_I2C_MUTEX) ||
		    FUNC0(pdata, XP_MDIO_MUTEX)) {
			FUNC7(100, 200);
			continue;
		}

		/* Obtain the mutex */
		FUNC1(pdata, XP_I2C_MUTEX, mutex_id);
		FUNC1(pdata, XP_MDIO_MUTEX, mutex_id);

		return 0;
	}

	FUNC4(&xgbe_phy_comm_lock);

	FUNC5(pdata->netdev, "unable to obtain hardware mutexes\n");

	return -ETIMEDOUT;
}