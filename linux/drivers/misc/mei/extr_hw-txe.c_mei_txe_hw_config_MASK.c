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
struct mei_txe_hw {int /*<<< orphan*/  readiness; int /*<<< orphan*/  aliveness; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 struct mei_txe_hw* FUNC3 (struct mei_device*) ; 

__attribute__((used)) static void FUNC4(struct mei_device *dev)
{

	struct mei_txe_hw *hw = FUNC3(dev);

	hw->aliveness = FUNC1(dev);
	hw->readiness = FUNC2(dev);

	FUNC0(dev->dev, "aliveness_resp = 0x%08x, readiness = 0x%08x.\n",
		hw->aliveness, hw->readiness);
}