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
struct otx2_mbox {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * hwbase; int /*<<< orphan*/ * reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct otx2_mbox *mbox)
{
	mbox->reg_base = NULL;
	mbox->hwbase = NULL;

	FUNC0(mbox->dev);
	mbox->dev = NULL;
}