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
struct ingenic_ecc {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCH_BHCR_BCHE ; 
 scalar_t__ BCH_BHINT ; 
 int /*<<< orphan*/  FUNC0 (struct ingenic_ecc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ingenic_ecc *bch)
{
	/* Clear interrupts */
	FUNC2(FUNC1(bch->base + BCH_BHINT), bch->base + BCH_BHINT);

	/* Disable the hardware */
	FUNC0(bch, BCH_BHCR_BCHE);
}