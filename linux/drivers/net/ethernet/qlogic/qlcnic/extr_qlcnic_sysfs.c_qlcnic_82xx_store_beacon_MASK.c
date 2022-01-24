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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_hardware_context {scalar_t__ beacon_state; } ;
struct qlcnic_adapter {int drv_sds_rings; int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_LED_TEST ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  __QLCNIC_DIAG_RES_ALLOC ; 
 int /*<<< orphan*/  __QLCNIC_LED_ENABLE ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (struct qlcnic_adapter*,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct qlcnic_adapter *adapter,
				    const char *buf, size_t len)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int err, drv_sds_rings = adapter->drv_sds_rings;
	u16 beacon;
	u8 b_state, b_rate;

	if (len != sizeof(u16))
		return -EINVAL;

	FUNC1(&beacon, buf, sizeof(u16));
	err = FUNC6(adapter, beacon, &b_state, &b_rate);
	if (err)
		return err;

	FUNC5(adapter);

	if (ahw->beacon_state == b_state)
		return len;

	FUNC7();
	if (!ahw->beacon_state) {
		if (FUNC11(__QLCNIC_LED_ENABLE, &adapter->state)) {
			FUNC8();
			return -EBUSY;
		}
	}

	if (FUNC12(__QLCNIC_RESETTING, &adapter->state)) {
		err = -EIO;
		goto out;
	}

	if (!FUNC12(__QLCNIC_DEV_UP, &adapter->state)) {
		err = FUNC3(adapter->netdev, QLCNIC_LED_TEST);
		if (err)
			goto out;
		FUNC9(__QLCNIC_DIAG_RES_ALLOC, &adapter->state);
	}

	err = FUNC2(adapter, b_state, b_rate);
	if (!err) {
		err = len;
		ahw->beacon_state = b_state;
	}

	if (FUNC10(__QLCNIC_DIAG_RES_ALLOC, &adapter->state))
		FUNC4(adapter->netdev, drv_sds_rings);

out:
	if (!ahw->beacon_state)
		FUNC0(__QLCNIC_LED_ENABLE, &adapter->state);
	FUNC8();

	return err;
}