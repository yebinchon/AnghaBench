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
struct venus_core {int /*<<< orphan*/  v4l2_dev; struct device* dev; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct venus_core*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct venus_core* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC10 (struct venus_core*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct venus_core *core = FUNC4(pdev);
	struct device *dev = core->dev;
	int ret;

	ret = FUNC6(dev);
	FUNC0(ret < 0);

	ret = FUNC1(core, true);
	FUNC0(ret);

	FUNC2(core);
	FUNC10(core);
	FUNC3(dev);

	FUNC9(core);

	FUNC7(dev);
	FUNC5(dev);

	FUNC8(&core->v4l2_dev);

	return ret;
}