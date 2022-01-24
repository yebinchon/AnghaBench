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
struct hl_device {int /*<<< orphan*/  id_control; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  hl_devs_idr ; 
 int /*<<< orphan*/  hl_devs_idr_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct hl_device *hdev)
{
	/* Remove device from the device list */
	FUNC2(&hl_devs_idr_lock);
	FUNC0(&hl_devs_idr, hdev->id);
	FUNC0(&hl_devs_idr, hdev->id_control);
	FUNC3(&hl_devs_idr_lock);

	FUNC1(hdev);
}