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
struct platform_device {int /*<<< orphan*/  name; } ;
struct hva_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  work_queue; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVA_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hva_dev*) ; 
 struct device* FUNC4 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hva_dev*) ; 
 struct hva_dev* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct hva_dev *hva = FUNC6(pdev);
	struct device *dev = FUNC4(hva);

	FUNC5(hva);

	FUNC0(hva->work_queue);

	FUNC3(hva);

#ifdef CONFIG_VIDEO_STI_HVA_DEBUGFS
	hva_debugfs_remove(hva);
#endif

	FUNC7(&hva->v4l2_dev);

	FUNC1(dev, "%s %s removed\n", HVA_PREFIX, pdev->name);

	return 0;
}