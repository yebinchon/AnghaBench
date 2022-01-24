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
typedef  int u16 ;
struct mmc_request {int dummy; } ;
struct mmc_omap_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTO ; 
 int FUNC0 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_omap_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDIO ; 

__attribute__((used)) static inline void FUNC2(struct mmc_omap_host *host, struct mmc_request *req)
{
	u16 reg;

	reg = FUNC0(host, SDIO);
	reg &= ~(1 << 5);
	FUNC1(host, SDIO, reg);
	/* Set maximum timeout */
	FUNC1(host, CTO, 0xfd);
}