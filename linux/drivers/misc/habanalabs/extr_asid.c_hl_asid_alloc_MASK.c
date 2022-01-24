#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long max_asid; } ;
struct hl_device {int /*<<< orphan*/  asid_mutex; int /*<<< orphan*/  asid_bitmap; TYPE_1__ asic_prop; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

unsigned long FUNC4(struct hl_device *hdev)
{
	unsigned long found;

	FUNC1(&hdev->asid_mutex);

	found = FUNC0(hdev->asid_bitmap,
					hdev->asic_prop.max_asid);
	if (found == hdev->asic_prop.max_asid)
		found = 0;
	else
		FUNC3(found, hdev->asid_bitmap);

	FUNC2(&hdev->asid_mutex);

	return found;
}