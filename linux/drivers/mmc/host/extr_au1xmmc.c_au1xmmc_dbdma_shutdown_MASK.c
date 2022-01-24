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
struct au1xmmc_host {int flags; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  tx_chan; } ;

/* Variables and functions */
 int HOST_F_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct au1xmmc_host *host)
{
	if (host->flags & HOST_F_DMA) {
		host->flags &= ~HOST_F_DMA;
		FUNC0(host->tx_chan);
		FUNC0(host->rx_chan);
	}
}