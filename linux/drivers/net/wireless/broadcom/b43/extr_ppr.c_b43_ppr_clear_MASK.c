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
typedef  int /*<<< orphan*/  u8 ;
struct b43_wldev {int dummy; } ;
struct b43_ppr {int dummy; } ;

/* Variables and functions */
 int B43_PPR_RATES_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_ppr*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct b43_wldev *dev, struct b43_ppr *ppr)
{
	FUNC1(ppr, 0, sizeof(*ppr));

	/* Compile-time PPR check */
	FUNC0(sizeof(struct b43_ppr) != B43_PPR_RATES_NUM * sizeof(u8));
}