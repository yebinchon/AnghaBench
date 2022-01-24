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
 struct meson_mx_mmc_host* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc, char reg, u32 mask,
				   u32 val)
{
	struct meson_mx_mmc_host *host = FUNC0(mmc);
	u32 regval;

	regval = FUNC1(host->base + reg);
	regval &= ~mask;
	regval |= (val & mask);

	FUNC2(regval, host->base + reg);
}