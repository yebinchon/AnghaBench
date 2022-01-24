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
struct ubi_volume {size_t vol_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; } ;
struct ubi_device {int /*<<< orphan*/ ** volumes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ubi_device *ubi, struct ubi_volume *vol)
{
	FUNC1("free volume %d", vol->vol_id);

	ubi->volumes[vol->vol_id] = NULL;
	FUNC0(&vol->cdev);
	FUNC2(&vol->dev);
}