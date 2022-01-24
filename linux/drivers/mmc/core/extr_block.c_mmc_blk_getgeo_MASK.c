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
struct hd_geometry {int cylinders; int heads; int sectors; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct block_device *bdev, struct hd_geometry *geo)
{
	geo->cylinders = FUNC0(bdev->bd_disk) / (4 * 16);
	geo->heads = 4;
	geo->sectors = 16;
	return 0;
}