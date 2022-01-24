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
struct msdc_host {scalar_t__ base; int /*<<< orphan*/  src_clk_cg; int /*<<< orphan*/  src_clk; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  h_clk; } ;

/* Variables and functions */
 scalar_t__ MSDC_CFG ; 
 int MSDC_CFG_CKSTB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct msdc_host *host)
{
	FUNC0(host->h_clk);
	FUNC0(host->bus_clk);
	FUNC0(host->src_clk);
	FUNC0(host->src_clk_cg);
	while (!(FUNC2(host->base + MSDC_CFG) & MSDC_CFG_CKSTB))
		FUNC1();
}