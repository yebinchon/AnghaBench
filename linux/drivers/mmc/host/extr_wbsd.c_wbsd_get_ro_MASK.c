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
typedef  int u8 ;
struct wbsd_host {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ WBSD_CSR ; 
 int WBSD_MSLED ; 
 int WBSD_WRPT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct wbsd_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mmc_host *mmc)
{
	struct wbsd_host *host = FUNC2(mmc);
	u8 csr;

	FUNC4(&host->lock);

	csr = FUNC0(host->base + WBSD_CSR);
	csr |= WBSD_MSLED;
	FUNC3(csr, host->base + WBSD_CSR);

	FUNC1(1);

	csr = FUNC0(host->base + WBSD_CSR);
	csr &= ~WBSD_MSLED;
	FUNC3(csr, host->base + WBSD_CSR);

	FUNC5(&host->lock);

	return !!(csr & WBSD_WRPT);
}