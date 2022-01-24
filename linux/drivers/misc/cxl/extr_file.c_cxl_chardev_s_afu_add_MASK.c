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
struct cxl_afu {int /*<<< orphan*/  chardev_s; int /*<<< orphan*/  afu_cdev_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 int /*<<< orphan*/  afu_fops ; 
 int FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 

int FUNC2(struct cxl_afu *afu)
{
	return FUNC1(afu, FUNC0(afu), &afu->afu_cdev_s,
			       &afu->chardev_s, "s", "shared",
			       &afu_fops);
}