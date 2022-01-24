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
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ NIG_REG_LLH0_FUNC_EN ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	int port = FUNC1(bp);

	if (!(FUNC2(bp) && FUNC0(bp)))
		FUNC3(bp, NIG_REG_LLH0_FUNC_EN + port * 8, 1);

	/* Tx queue should be only re-enabled */
	FUNC4(bp->dev);

	/*
	 * Should not call netif_carrier_on since it will be called if the link
	 * is up when checking for link state
	 */
}