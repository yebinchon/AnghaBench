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
struct bdisp_dev {int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 int FUNC0 (struct bdisp_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bdisp_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct bdisp_dev *bdisp = FUNC2(dev);
	int ret = FUNC0(bdisp);

	if (!ret)
		FUNC1(bdisp->clock);

	return ret;
}