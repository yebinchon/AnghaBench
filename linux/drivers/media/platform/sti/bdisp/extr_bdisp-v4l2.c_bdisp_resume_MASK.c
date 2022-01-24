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
struct device {int dummy; } ;
struct bdisp_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_M2M_OPEN ; 
 int FUNC0 (struct device*) ; 
 struct bdisp_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct bdisp_dev *bdisp = FUNC1(dev);
	unsigned long flags;
	int opened;

	FUNC3(&bdisp->slock, flags);
	opened = FUNC5(ST_M2M_OPEN, &bdisp->state);
	FUNC4(&bdisp->slock, flags);

	if (!opened)
		return 0;

	if (!FUNC2(dev))
		return FUNC0(dev);

	return 0;
}