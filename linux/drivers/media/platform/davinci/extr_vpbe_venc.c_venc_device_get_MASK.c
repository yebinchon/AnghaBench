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
struct venc_state {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct venc_state* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct platform_device *pdev = FUNC2(dev);
	struct venc_state **venc = data;

	if (FUNC1(pdev->name, "vpbe-venc") != NULL)
		*venc = FUNC0(pdev);

	return 0;
}