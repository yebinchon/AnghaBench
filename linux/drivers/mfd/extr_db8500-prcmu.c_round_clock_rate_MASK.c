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
typedef  unsigned long u64 ;
typedef  int u32 ;
struct TYPE_2__ {int pllsw; scalar_t__ clk38div; int /*<<< orphan*/  branch; scalar_t__ offset; } ;

/* Variables and functions */
 size_t PRCMU_SGACLK ; 
 int PRCM_CLK_MGT_CLK38 ; 
 TYPE_1__* clk_mgt ; 
 int FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 unsigned long FUNC3 (int,int) ; 
 scalar_t__ prcmu_base ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static long FUNC5(u8 clock, unsigned long rate)
{
	u32 val;
	u32 div;
	unsigned long src_rate;
	long rounded_rate;

	val = FUNC4(prcmu_base + clk_mgt[clock].offset);
	src_rate = FUNC1((val | clk_mgt[clock].pllsw),
		clk_mgt[clock].branch);
	div = FUNC0(src_rate, rate);
	if (val & PRCM_CLK_MGT_CLK38) {
		if (clk_mgt[clock].clk38div) {
			if (div > 2)
				div = 2;
		} else {
			div = 1;
		}
	} else if ((clock == PRCMU_SGACLK) && (div == 3)) {
		u64 r = (src_rate * 10);

		(void)FUNC2(r, 25);
		if (r <= rate)
			return (unsigned long)r;
	}
	rounded_rate = (src_rate / FUNC3(div, (u32)31));

	return rounded_rate;
}