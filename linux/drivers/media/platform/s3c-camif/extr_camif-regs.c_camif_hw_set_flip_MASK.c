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
struct camif_vp {int /*<<< orphan*/  offset; int /*<<< orphan*/  id; int /*<<< orphan*/  camif; scalar_t__ vflip; scalar_t__ hflip; } ;

/* Variables and functions */
 int /*<<< orphan*/  CITRGFMT_FLIP_MASK ; 
 int /*<<< orphan*/  CITRGFMT_FLIP_X_MIRROR ; 
 int /*<<< orphan*/  CITRGFMT_FLIP_Y_MIRROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct camif_vp *vp)
{
	u32 cfg = FUNC1(vp->camif,
				FUNC0(vp->id, vp->offset));

	cfg &= ~CITRGFMT_FLIP_MASK;

	if (vp->hflip)
		cfg |= CITRGFMT_FLIP_Y_MIRROR;
	if (vp->vflip)
		cfg |= CITRGFMT_FLIP_X_MIRROR;

	FUNC2(vp->camif, FUNC0(vp->id, vp->offset), cfg);
}