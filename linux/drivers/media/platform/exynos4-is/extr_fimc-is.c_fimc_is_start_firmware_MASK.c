#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* f_w; } ;
struct TYPE_5__ {int /*<<< orphan*/  vaddr; } ;
struct fimc_is {TYPE_4__ fw; TYPE_1__ memory; TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FIMC_IS_FW_LOAD_TIMEOUT ; 
 int /*<<< orphan*/  IS_ST_A5_PWR_ON ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct fimc_is*,int) ; 
 int FUNC2 (struct fimc_is*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct fimc_is *is)
{
	struct device *dev = &is->pdev->dev;
	int ret;

	if (is->fw.f_w == NULL) {
		FUNC0(dev, "firmware is not loaded\n");
		return -EINVAL;
	}

	FUNC3(is->memory.vaddr, is->fw.f_w->data, is->fw.f_w->size);
	FUNC5();

	ret = FUNC1(is, 1);
	if (ret < 0)
		return ret;

	ret = FUNC2(is, IS_ST_A5_PWR_ON, 1,
				 FUNC4(FIMC_IS_FW_LOAD_TIMEOUT));
	if (ret < 0)
		FUNC0(dev, "FIMC-IS CPU power on failed\n");

	return ret;
}