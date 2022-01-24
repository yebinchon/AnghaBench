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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cxl {int slices; int /*<<< orphan*/ * afu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cxl* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct cxl *adapter;
	int afu;

	adapter = FUNC2(&pdev->dev);
	for (afu = 0; afu < adapter->slices; afu++)
		FUNC1(adapter->afu[afu]);

	FUNC0(adapter);
	return 0;
}