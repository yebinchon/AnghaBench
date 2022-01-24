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
struct tmio_mmc_host {int dummy; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int /*<<< orphan*/  (* disable ) (struct platform_device*) ;} ;

/* Variables and functions */
 struct mfd_cell* FUNC0 (struct platform_device*) ; 
 struct tmio_mmc_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	const struct mfd_cell *cell = FUNC0(pdev);
	struct tmio_mmc_host *host = FUNC1(pdev);

	FUNC3(host);
	if (cell->disable)
		cell->disable(pdev);

	return 0;
}