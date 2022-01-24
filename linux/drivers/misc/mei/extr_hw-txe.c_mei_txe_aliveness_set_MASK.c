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
typedef  int /*<<< orphan*/  u32 ;
struct mei_txe_hw {int /*<<< orphan*/  aliveness; } ;
struct mei_device {int /*<<< orphan*/  pg_event; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEI_PG_EVENT_WAIT ; 
 int /*<<< orphan*/  SICR_HOST_ALIVENESS_REQ_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_txe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC2 (struct mei_device*) ; 

__attribute__((used)) static bool FUNC3(struct mei_device *dev, u32 req)
{

	struct mei_txe_hw *hw = FUNC2(dev);
	bool do_req = hw->aliveness != req;

	FUNC0(dev->dev, "Aliveness current=%d request=%d\n",
				hw->aliveness, req);
	if (do_req) {
		dev->pg_event = MEI_PG_EVENT_WAIT;
		FUNC1(hw, SICR_HOST_ALIVENESS_REQ_REG, req);
	}
	return do_req;
}