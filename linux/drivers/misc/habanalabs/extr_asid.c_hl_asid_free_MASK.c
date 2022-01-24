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
struct hl_device {int /*<<< orphan*/  asid_bitmap; TYPE_1__ asic_prop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

void FUNC2(struct hl_device *hdev, unsigned long asid)
{
	if (FUNC0((asid == 0 || asid >= hdev->asic_prop.max_asid),
						"Invalid ASID %lu", asid))
		return;
	FUNC1(asid, hdev->asid_bitmap);
}