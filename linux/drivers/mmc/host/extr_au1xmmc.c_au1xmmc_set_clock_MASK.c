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
typedef  unsigned int u32 ;
struct au1xmmc_host {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 unsigned int SD_CONFIG_DE ; 
 unsigned int SD_CONFIG_DIV ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct au1xmmc_host *host, int rate)
{
	unsigned int pbus = FUNC3(host->clk);
	unsigned int divisor = ((pbus / rate) / 2) - 1;
	u32 config;

	config = FUNC1(FUNC0(host));

	config &= ~(SD_CONFIG_DIV);
	config |= (divisor & SD_CONFIG_DIV) | SD_CONFIG_DE;

	FUNC2(config, FUNC0(host));
	FUNC4(); /* drain writebuffer */
}