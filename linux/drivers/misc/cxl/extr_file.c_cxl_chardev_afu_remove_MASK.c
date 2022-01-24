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
struct cxl_afu {int /*<<< orphan*/ * chardev_s; int /*<<< orphan*/  afu_cdev_s; int /*<<< orphan*/ * chardev_m; int /*<<< orphan*/  afu_cdev_m; int /*<<< orphan*/ * chardev_d; int /*<<< orphan*/  afu_cdev_d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct cxl_afu *afu)
{
	if (afu->chardev_d) {
		FUNC0(&afu->afu_cdev_d);
		FUNC1(afu->chardev_d);
		afu->chardev_d = NULL;
	}
	if (afu->chardev_m) {
		FUNC0(&afu->afu_cdev_m);
		FUNC1(afu->chardev_m);
		afu->chardev_m = NULL;
	}
	if (afu->chardev_s) {
		FUNC0(&afu->afu_cdev_s);
		FUNC1(afu->chardev_s);
		afu->chardev_s = NULL;
	}
}