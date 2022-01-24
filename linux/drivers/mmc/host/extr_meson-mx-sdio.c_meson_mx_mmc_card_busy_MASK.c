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
struct mmc_host {int dummy; } ;
struct meson_mx_mmc_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MESON_MX_SDIO_IRQC ; 
 int MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK ; 
 struct meson_mx_mmc_host* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mmc_host *mmc)
{
	struct meson_mx_mmc_host *host = FUNC0(mmc);
	u32 irqc = FUNC1(host->base + MESON_MX_SDIO_IRQC);

	return !!(irqc & MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK);
}