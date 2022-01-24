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
struct au0828_rc {int /*<<< orphan*/  work; } ;
struct au0828_dev {struct au0828_rc* ir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au0828_rc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct au0828_dev *dev)
{
	struct au0828_rc *ir = dev->ir;

	if (!ir)
		return 0;

	FUNC2("Stopping RC\n");

	FUNC1(&ir->work);

	/* Disable IR */
	FUNC0(ir, 0xe0, 1 << 4);

	return 0;
}