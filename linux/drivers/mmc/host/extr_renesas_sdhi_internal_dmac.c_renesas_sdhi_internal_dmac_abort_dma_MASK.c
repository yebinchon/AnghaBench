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
typedef  int u64 ;
struct tmio_mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CM_RST ; 
 int RST_DTRANRST0 ; 
 int RST_DTRANRST1 ; 
 int RST_RESERVED_BITS ; 
 int /*<<< orphan*/  SDHI_INTERNAL_DMAC_RX_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_flags ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int) ; 

__attribute__((used)) static void
FUNC3(struct tmio_mmc_host *host) {
	u64 val = RST_DTRANRST1 | RST_DTRANRST0;

	FUNC2(host, false);

	FUNC1(host, DM_CM_RST,
					    RST_RESERVED_BITS & ~val);
	FUNC1(host, DM_CM_RST,
					    RST_RESERVED_BITS | val);

	FUNC0(SDHI_INTERNAL_DMAC_RX_IN_USE, &global_flags);

	FUNC2(host, true);
}