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
struct rcar_canfd_global {int /*<<< orphan*/  base; scalar_t__ fdmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCANFD_GCTR ; 
 int /*<<< orphan*/  RCANFD_GCTR_CFMPOFIE ; 
 int /*<<< orphan*/  RCANFD_GCTR_MEIE ; 
 int /*<<< orphan*/  RCANFD_GERFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rcar_canfd_global *gpriv)
{
	u32 ctr;

	/* Clear any stray error interrupt flags */
	FUNC1(gpriv->base, RCANFD_GERFL, 0);

	/* Global interrupts setup */
	ctr = RCANFD_GCTR_MEIE;
	if (gpriv->fdmode)
		ctr |= RCANFD_GCTR_CFMPOFIE;

	FUNC0(gpriv->base, RCANFD_GCTR, ctr);
}