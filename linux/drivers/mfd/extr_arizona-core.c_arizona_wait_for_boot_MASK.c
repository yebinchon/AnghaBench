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
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_BOOT_DONE_STS ; 
 int /*<<< orphan*/  ARIZONA_INTERRUPT_RAW_STATUS_5 ; 
 int /*<<< orphan*/  ARIZONA_INTERRUPT_STATUS_5 ; 
 int FUNC0 (struct arizona*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct arizona *arizona)
{
	int ret;

	/*
	 * We can't use an interrupt as we need to runtime resume to do so,
	 * we won't race with the interrupt handler as it'll be blocked on
	 * runtime resume.
	 */
	ret = FUNC0(arizona, 30, ARIZONA_INTERRUPT_RAW_STATUS_5,
			       ARIZONA_BOOT_DONE_STS, ARIZONA_BOOT_DONE_STS);

	if (!ret)
		FUNC2(arizona->regmap, ARIZONA_INTERRUPT_STATUS_5,
			     ARIZONA_BOOT_DONE_STS);

	FUNC1(arizona->dev);

	return ret;
}