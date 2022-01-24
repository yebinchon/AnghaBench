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
struct netdevsim_shared_dev {int /*<<< orphan*/  ddir; scalar_t__ refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdevsim_shared_dev*) ; 

void FUNC2(struct netdevsim_shared_dev *sdev)
{
	if (--sdev->refcnt)
		return;
	FUNC0(sdev->ddir);
	FUNC1(sdev);
}