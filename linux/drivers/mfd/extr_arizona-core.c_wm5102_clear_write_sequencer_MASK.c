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
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  dcvdd; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_WRITE_SEQUENCER_CTRL_3 ; 
 int /*<<< orphan*/  FUNC0 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC1 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct arizona *arizona)
{
	int ret;

	ret = FUNC4(arizona->regmap, ARIZONA_WRITE_SEQUENCER_CTRL_3,
			   0x0);
	if (ret) {
		FUNC2(arizona->dev,
			"Failed to clear write sequencer state: %d\n", ret);
		return ret;
	}

	FUNC1(arizona);
	FUNC5(arizona->dcvdd);

	FUNC3(20);

	ret = FUNC6(arizona->dcvdd);
	if (ret) {
		FUNC2(arizona->dev, "Failed to re-enable DCVDD: %d\n", ret);
		return ret;
	}
	FUNC0(arizona);

	return 0;
}