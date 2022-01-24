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
struct hd_geometry {int heads; int cylinders; scalar_t__ start; int /*<<< orphan*/  sectors; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct block_device *bdev, struct hd_geometry *geo)
{
	/* Some tools might require this information */
	geo->heads = 1;
	geo->cylinders = 1;
	geo->sectors = FUNC0(bdev->bd_disk);
	geo->start = 0;
	return 0;
}