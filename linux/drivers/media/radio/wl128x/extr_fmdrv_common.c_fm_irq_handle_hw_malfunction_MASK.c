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
struct TYPE_2__ {int flag; int mask; } ;
struct fmdev {TYPE_1__ irq_info; } ;

/* Variables and functions */
 int FM_MAL_EVENT ; 
 int /*<<< orphan*/  FM_RDS_START_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct fmdev *fmdev)
{
	if (fmdev->irq_info.flag & FM_MAL_EVENT & fmdev->irq_info.mask)
		FUNC1("irq: HW MAL int received - do nothing\n");

	/* Continue next function in interrupt handler table */
	FUNC0(fmdev, FM_RDS_START_IDX);
}