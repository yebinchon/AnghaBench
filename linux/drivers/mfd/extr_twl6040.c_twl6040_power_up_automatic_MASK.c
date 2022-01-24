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
typedef  int u8 ;
struct twl6040 {int /*<<< orphan*/  audpwron; int /*<<< orphan*/  dev; int /*<<< orphan*/  ready; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int TWL6040_READYINT ; 
 int /*<<< orphan*/  TWL6040_REG_INTID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct twl6040*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct twl6040 *twl6040)
{
	int time_left;

	FUNC2(twl6040->audpwron, 1);

	time_left = FUNC5(&twl6040->ready,
						FUNC3(144));
	if (!time_left) {
		u8 intid;

		FUNC1(twl6040->dev, "timeout waiting for READYINT\n");
		intid = FUNC4(twl6040, TWL6040_REG_INTID);
		if (!(intid & TWL6040_READYINT)) {
			FUNC0(twl6040->dev, "automatic power-up failed\n");
			FUNC2(twl6040->audpwron, 0);
			return -ETIMEDOUT;
		}
	}

	return 0;
}