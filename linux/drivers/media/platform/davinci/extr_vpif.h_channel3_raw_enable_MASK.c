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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  VPIF_CH3_CTRL ; 
 int /*<<< orphan*/  VPIF_CH_HANC_EN_BIT ; 
 int /*<<< orphan*/  VPIF_CH_VANC_EN_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(int enable, u8 index)
{
	u32 mask;

	if (1 == index)
		mask = VPIF_CH_VANC_EN_BIT;
	else
		mask = VPIF_CH_HANC_EN_BIT;

	if (enable)
		FUNC1(VPIF_CH3_CTRL, mask);
	else
		FUNC0(VPIF_CH3_CTRL, mask);
}