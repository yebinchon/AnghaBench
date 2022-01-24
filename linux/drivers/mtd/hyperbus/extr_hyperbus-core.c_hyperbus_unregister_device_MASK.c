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
struct hyperbus_device {scalar_t__ mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

int FUNC2(struct hyperbus_device *hbdev)
{
	int ret = 0;

	if (hbdev && hbdev->mtd) {
		ret = FUNC1(hbdev->mtd);
		FUNC0(hbdev->mtd);
	}

	return ret;
}