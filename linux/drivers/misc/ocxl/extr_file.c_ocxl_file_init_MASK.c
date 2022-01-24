#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  devnode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  OCXL_NUM_MINORS ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minors_idr ; 
 int /*<<< orphan*/  minors_idr_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ocxl_class ; 
 int /*<<< orphan*/  ocxl_dev ; 
 int /*<<< orphan*/  ocxl_devnode ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(void)
{
	int rc;

	FUNC5(&minors_idr_lock);
	FUNC4(&minors_idr);

	rc = FUNC2(&ocxl_dev, 0, OCXL_NUM_MINORS, "ocxl");
	if (rc) {
		FUNC6("Unable to allocate ocxl major number: %d\n", rc);
		return rc;
	}

	ocxl_class = FUNC3(THIS_MODULE, "ocxl");
	if (FUNC0(ocxl_class)) {
		FUNC6("Unable to create ocxl class\n");
		FUNC7(ocxl_dev, OCXL_NUM_MINORS);
		return FUNC1(ocxl_class);
	}

	ocxl_class->devnode = ocxl_devnode;
	return 0;
}