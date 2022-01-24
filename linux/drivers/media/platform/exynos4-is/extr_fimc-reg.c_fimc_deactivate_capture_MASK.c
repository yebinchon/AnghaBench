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
struct fimc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_dev*,int) ; 

void FUNC3(struct fimc_dev *fimc)
{
	FUNC1(fimc, true);
	FUNC0(fimc);
	FUNC2(fimc, false);
	FUNC1(fimc, false);
}