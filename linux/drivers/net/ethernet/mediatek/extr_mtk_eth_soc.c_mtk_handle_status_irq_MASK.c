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
 int MTK_GDM1_AF ; 
 int MTK_GDM2_AF ; 
 int /*<<< orphan*/  MTK_INT_STATUS2 ; 
 int FUNC0 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct mtk_eth *eth)
{
	u32 status2 = FUNC0(eth, MTK_INT_STATUS2);

	if (FUNC3(status2 & (MTK_GDM1_AF | MTK_GDM2_AF))) {
		FUNC1(eth);
		FUNC2(eth, (MTK_GDM1_AF | MTK_GDM2_AF),
			MTK_INT_STATUS2);
	}
}