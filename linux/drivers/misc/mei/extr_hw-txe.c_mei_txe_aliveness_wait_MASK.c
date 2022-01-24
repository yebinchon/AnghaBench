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
typedef  scalar_t__ u32 ;
struct mei_txe_hw {scalar_t__ aliveness; int /*<<< orphan*/  wait_aliveness_resp; } ;
struct mei_device {int /*<<< orphan*/  pg_event; int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  MEI_PG_EVENT_IDLE ; 
 int /*<<< orphan*/  MEI_PG_EVENT_RECEIVED ; 
 int /*<<< orphan*/  SEC_ALIVENESS_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long const) ; 
 void* FUNC3 (struct mei_device*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mei_txe_hw* FUNC7 (struct mei_device*) ; 
 long FUNC8 (int /*<<< orphan*/ ,int,unsigned long const) ; 

__attribute__((used)) static int FUNC9(struct mei_device *dev, u32 expected)
{
	struct mei_txe_hw *hw = FUNC7(dev);
	const unsigned long timeout =
			FUNC4(SEC_ALIVENESS_WAIT_TIMEOUT);
	long err;
	int ret;

	hw->aliveness = FUNC3(dev);
	if (hw->aliveness == expected)
		return 0;

	FUNC6(&dev->device_lock);
	err = FUNC8(hw->wait_aliveness_resp,
			dev->pg_event == MEI_PG_EVENT_RECEIVED, timeout);
	FUNC5(&dev->device_lock);

	hw->aliveness = FUNC3(dev);
	ret = hw->aliveness == expected ? 0 : -ETIME;

	if (ret)
		FUNC1(dev->dev, "aliveness timed out = %ld aliveness = %d event = %d\n",
			err, hw->aliveness, dev->pg_event);
	else
		FUNC0(dev->dev, "aliveness settled after = %d msec aliveness = %d event = %d\n",
			FUNC2(timeout - err),
			hw->aliveness, dev->pg_event);

	dev->pg_event = MEI_PG_EVENT_IDLE;
	return ret;
}