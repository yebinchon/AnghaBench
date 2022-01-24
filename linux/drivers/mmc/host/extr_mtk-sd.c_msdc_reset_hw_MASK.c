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
struct msdc_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MSDC_CFG ; 
 int MSDC_CFG_RST ; 
 scalar_t__ MSDC_FIFOCS ; 
 int MSDC_FIFOCS_CLR ; 
 scalar_t__ MSDC_INT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct msdc_host *host)
{
	u32 val;

	FUNC2(host->base + MSDC_CFG, MSDC_CFG_RST);
	while (FUNC1(host->base + MSDC_CFG) & MSDC_CFG_RST)
		FUNC0();

	FUNC2(host->base + MSDC_FIFOCS, MSDC_FIFOCS_CLR);
	while (FUNC1(host->base + MSDC_FIFOCS) & MSDC_FIFOCS_CLR)
		FUNC0();

	val = FUNC1(host->base + MSDC_INT);
	FUNC3(val, host->base + MSDC_INT);
}