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
typedef  size_t u8 ;
typedef  int u32 ;
struct TYPE_2__ {int div_mask; int div_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCMU_TVCLK ; 
 int /*<<< orphan*/  PRCM_DSITVCLK_DIV ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dsiescclk ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(u8 n, unsigned long rate)
{
	u32 val;
	u32 div;

	div = FUNC0(FUNC1(PRCMU_TVCLK), rate);
	val = FUNC3(PRCM_DSITVCLK_DIV);
	val &= ~dsiescclk[n].div_mask;
	val |= (FUNC2(div, (u32)255) << dsiescclk[n].div_shift);
	FUNC4(val, PRCM_DSITVCLK_DIV);
}