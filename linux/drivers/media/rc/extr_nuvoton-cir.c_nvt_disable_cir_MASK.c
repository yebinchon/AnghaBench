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
struct nvt_dev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_IRCON ; 
 int /*<<< orphan*/  CIR_IREN ; 
 int /*<<< orphan*/  CIR_IRSTS ; 
 int /*<<< orphan*/  LOGICAL_DEV_CIR ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct nvt_dev *nvt)
{
	unsigned long flags;

	FUNC4(&nvt->lock, flags);

	/* disable CIR interrupts */
	FUNC0(nvt, 0, CIR_IREN);

	/* clear any and all pending interrupts */
	FUNC0(nvt, 0xff, CIR_IRSTS);

	/* clear all function enable flags */
	FUNC0(nvt, 0, CIR_IRCON);

	/* clear hardware rx and tx fifos */
	FUNC1(nvt);
	FUNC2(nvt);

	FUNC5(&nvt->lock, flags);

	/* disable the CIR logical device */
	FUNC3(nvt, LOGICAL_DEV_CIR);
}