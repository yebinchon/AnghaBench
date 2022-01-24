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
typedef  int u32 ;
struct mtk_eth {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MTK_RING_MYIP_VLD ; 
 int FUNC2 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtk_eth *eth, int idx)
{
	u32 reg_val;

	reg_val = FUNC2(eth, FUNC0(idx));

	/* invalidate the IP setting */
	FUNC3(eth, (reg_val & ~MTK_RING_MYIP_VLD), FUNC0(idx));

	FUNC3(eth, 0, FUNC1(idx));
}