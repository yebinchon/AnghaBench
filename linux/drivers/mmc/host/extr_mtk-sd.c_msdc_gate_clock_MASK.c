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
struct msdc_host {int /*<<< orphan*/  h_clk; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  src_clk; int /*<<< orphan*/  src_clk_cg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct msdc_host *host)
{
	FUNC0(host->src_clk_cg);
	FUNC0(host->src_clk);
	FUNC0(host->bus_clk);
	FUNC0(host->h_clk);
}