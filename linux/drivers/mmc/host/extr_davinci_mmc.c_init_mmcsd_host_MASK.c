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
struct mmc_davinci_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MMCCLK ; 
 scalar_t__ DAVINCI_MMCTOD ; 
 scalar_t__ DAVINCI_MMCTOR ; 
 int MMCCLK_CLKEN ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_davinci_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mmc_davinci_host *host)
{

	FUNC0(host, 1);

	FUNC1(0, host->base + DAVINCI_MMCCLK);
	FUNC1(MMCCLK_CLKEN, host->base + DAVINCI_MMCCLK);

	FUNC1(0x1FFF, host->base + DAVINCI_MMCTOR);
	FUNC1(0xFFFF, host->base + DAVINCI_MMCTOD);

	FUNC0(host, 0);
}