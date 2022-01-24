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
typedef  int /*<<< orphan*/  u32 ;
struct camif_vp {int /*<<< orphan*/  camif; int /*<<< orphan*/  offset; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CICTRL_LASTIRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct camif_vp *vp, int enable)
{
	u32 addr = FUNC0(vp->id, vp->offset);
	u32 cfg;

	cfg = FUNC1(vp->camif, addr);
	if (enable)
		cfg |= CICTRL_LASTIRQ_ENABLE;
	else
		cfg &= ~CICTRL_LASTIRQ_ENABLE;
	FUNC2(vp->camif, addr, cfg);
}