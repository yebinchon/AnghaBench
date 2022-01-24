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
struct sunxi_mmc_host {int dummy; } ;

/* Variables and functions */
#define  MMC_BUS_WIDTH_1 130 
#define  MMC_BUS_WIDTH_4 129 
#define  MMC_BUS_WIDTH_8 128 
 int /*<<< orphan*/  REG_WIDTH ; 
 int /*<<< orphan*/  SDXC_WIDTH1 ; 
 int /*<<< orphan*/  SDXC_WIDTH4 ; 
 int /*<<< orphan*/  SDXC_WIDTH8 ; 
 int /*<<< orphan*/  FUNC0 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sunxi_mmc_host *host,
				   unsigned char width)
{
	switch (width) {
	case MMC_BUS_WIDTH_1:
		FUNC0(host, REG_WIDTH, SDXC_WIDTH1);
		break;
	case MMC_BUS_WIDTH_4:
		FUNC0(host, REG_WIDTH, SDXC_WIDTH4);
		break;
	case MMC_BUS_WIDTH_8:
		FUNC0(host, REG_WIDTH, SDXC_WIDTH8);
		break;
	}
}