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
struct tmio_nand {scalar_t__ fcr; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int /*<<< orphan*/  (* disable ) (struct platform_device*) ;} ;

/* Variables and functions */
 scalar_t__ FCR_MODE ; 
 int /*<<< orphan*/  FCR_MODE_POWER_OFF ; 
 struct mfd_cell* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct platform_device *dev, struct tmio_nand *tmio)
{
	const struct mfd_cell *cell = FUNC0(dev);

	FUNC2(FCR_MODE_POWER_OFF, tmio->fcr + FCR_MODE);
	if (cell->disable)
		cell->disable(dev);
}