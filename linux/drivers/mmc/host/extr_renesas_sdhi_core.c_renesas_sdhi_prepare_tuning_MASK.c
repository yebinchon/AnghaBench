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
struct tmio_mmc_host {int dummy; } ;
struct renesas_sdhi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SH_MOBILE_SDHI_SCC_TAPSET ; 
 struct renesas_sdhi* FUNC0 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,struct renesas_sdhi*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct tmio_mmc_host *host,
					unsigned long tap)
{
	struct renesas_sdhi *priv = FUNC0(host);

	/* Set sampling clock position */
	FUNC1(host, priv, SH_MOBILE_SDHI_SCC_TAPSET, tap);
}