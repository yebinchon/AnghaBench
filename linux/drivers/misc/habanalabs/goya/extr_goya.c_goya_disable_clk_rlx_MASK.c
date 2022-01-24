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
struct hl_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmIC_PLL_CLK_RLX_0 ; 
 int /*<<< orphan*/  mmPSOC_MME_PLL_CLK_RLX_0 ; 

__attribute__((used)) static void FUNC1(struct hl_device *hdev)
{
	FUNC0(mmPSOC_MME_PLL_CLK_RLX_0, 0x100010);
	FUNC0(mmIC_PLL_CLK_RLX_0, 0x100010);
}