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
struct g2d_dev {TYPE_1__* variant; } ;
struct TYPE_2__ {scalar_t__ hw_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITBLT_START_REG ; 
 int /*<<< orphan*/  CACHECTL_REG ; 
 int /*<<< orphan*/  INTEN_REG ; 
 scalar_t__ TYPE_G2D_3X ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

void FUNC1(struct g2d_dev *d)
{
	/* Clear cache */
	if (d->variant->hw_rev == TYPE_G2D_3X)
		FUNC0(0x7, CACHECTL_REG);

	/* Enable interrupt */
	FUNC0(1, INTEN_REG);
	/* Start G2D engine */
	FUNC0(1, BITBLT_START_REG);
}