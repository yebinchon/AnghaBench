#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdhci_host {int flags; int /*<<< orphan*/  bounce_buffer; } ;
struct mmc_request {TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  COOKIE_PRE_MAPPED ; 
 int /*<<< orphan*/  COOKIE_UNMAPPED ; 
 int SDHCI_REQ_USE_DMA ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct sdhci_host *host = FUNC0(mmc);

	mrq->data->host_cookie = COOKIE_UNMAPPED;

	/*
	 * No pre-mapping in the pre hook if we're using the bounce buffer,
	 * for that we would need two bounce buffers since one buffer is
	 * in flight when this is getting called.
	 */
	if (host->flags & SDHCI_REQ_USE_DMA && !host->bounce_buffer)
		FUNC1(host, mrq->data, COOKIE_PRE_MAPPED);
}