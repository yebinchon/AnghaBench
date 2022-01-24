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
struct mei_txe_hw {scalar_t__ aliveness; } ;
struct mei_device {int /*<<< orphan*/  dev; void* pg_event; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ETIME ; 
 void* MEI_PG_EVENT_IDLE ; 
 int /*<<< orphan*/  SEC_ALIVENESS_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC9 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct mei_device *dev, u32 expected)
{
	struct mei_txe_hw *hw = FUNC9(dev);
	ktime_t stop, start;

	start = FUNC4();
	stop = FUNC2(start, FUNC8(SEC_ALIVENESS_WAIT_TIMEOUT));
	do {
		hw->aliveness = FUNC7(dev);
		if (hw->aliveness == expected) {
			dev->pg_event = MEI_PG_EVENT_IDLE;
			FUNC0(dev->dev, "aliveness settled after %lld usecs\n",
				FUNC6(FUNC5(FUNC4(), start)));
			return 0;
		}
		FUNC10(20, 50);
	} while (FUNC3(FUNC4(), stop));

	dev->pg_event = MEI_PG_EVENT_IDLE;
	FUNC1(dev->dev, "aliveness timed out\n");
	return -ETIME;
}