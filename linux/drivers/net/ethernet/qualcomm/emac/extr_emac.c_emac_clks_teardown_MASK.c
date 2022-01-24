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
struct emac_adapter {int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 unsigned int EMAC_CLK_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct emac_adapter *adpt)
{

	unsigned int i;

	for (i = 0; i < EMAC_CLK_CNT; i++)
		FUNC0(adpt->clk[i]);
}