#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sdhci_host {int flags; unsigned int bounce_buffer_size; int quirks; int pending_reset; TYPE_2__* mmc; int /*<<< orphan*/  lock; struct mmc_request** mrqs_done; int /*<<< orphan*/  clock; TYPE_1__* ops; scalar_t__ data_cmd; scalar_t__ cmd; int /*<<< orphan*/  bounce_addr; int /*<<< orphan*/  bounce_buffer; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {scalar_t__ host_cookie; unsigned int bytes_xfered; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_clock ) (struct sdhci_host*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ COOKIE_MAPPED ; 
 scalar_t__ COOKIE_UNMAPPED ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 int SDHCI_MAX_MRQS ; 
 int SDHCI_QUIRK_CLOCK_BEFORE_RESET ; 
 int SDHCI_REQ_USE_DMA ; 
 int /*<<< orphan*/  SDHCI_RESET_CMD ; 
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sdhci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC13(struct sdhci_host *host)
{
	unsigned long flags;
	struct mmc_request *mrq;
	int i;

	FUNC10(&host->lock, flags);

	for (i = 0; i < SDHCI_MAX_MRQS; i++) {
		mrq = host->mrqs_done[i];
		if (mrq)
			break;
	}

	if (!mrq) {
		FUNC11(&host->lock, flags);
		return true;
	}

	/*
	 * Always unmap the data buffers if they were mapped by
	 * sdhci_prepare_data() whenever we finish with a request.
	 * This avoids leaking DMA mappings on error.
	 */
	if (host->flags & SDHCI_REQ_USE_DMA) {
		struct mmc_data *data = mrq->data;

		if (data && data->host_cookie == COOKIE_MAPPED) {
			if (host->bounce_buffer) {
				/*
				 * On reads, copy the bounced data into the
				 * sglist
				 */
				if (FUNC3(data) == DMA_FROM_DEVICE) {
					unsigned int length = data->bytes_xfered;

					if (length > host->bounce_buffer_size) {
						FUNC6("%s: bounce buffer is %u bytes but DMA claims to have transferred %u bytes\n",
						       FUNC4(host->mmc),
						       host->bounce_buffer_size,
						       data->bytes_xfered);
						/* Cap it down and continue */
						length = host->bounce_buffer_size;
					}
					FUNC0(
						host->mmc->parent,
						host->bounce_addr,
						host->bounce_buffer_size,
						DMA_FROM_DEVICE);
					FUNC9(data->sg,
						data->sg_len,
						host->bounce_buffer,
						length);
				} else {
					/* No copying, just switch ownership */
					FUNC0(
						host->mmc->parent,
						host->bounce_addr,
						host->bounce_buffer_size,
						FUNC3(data));
				}
			} else {
				/* Unmap the raw data */
				FUNC1(FUNC2(host->mmc), data->sg,
					     data->sg_len,
					     FUNC3(data));
			}
			data->host_cookie = COOKIE_UNMAPPED;
		}
	}

	/*
	 * The controller needs a reset of internal state machines
	 * upon error conditions.
	 */
	if (FUNC8(host, mrq)) {
		/*
		 * Do not finish until command and data lines are available for
		 * reset. Note there can only be one other mrq, so it cannot
		 * also be in mrqs_done, otherwise host->cmd and host->data_cmd
		 * would both be null.
		 */
		if (host->cmd || host->data_cmd) {
			FUNC11(&host->lock, flags);
			return true;
		}

		/* Some controllers need this kick or reset won't work here */
		if (host->quirks & SDHCI_QUIRK_CLOCK_BEFORE_RESET)
			/* This is to force an update */
			host->ops->set_clock(host, host->clock);

		/* Spec says we should do both at the same time, but Ricoh
		   controllers do not like that. */
		FUNC7(host, SDHCI_RESET_CMD);
		FUNC7(host, SDHCI_RESET_DATA);

		host->pending_reset = false;
	}

	host->mrqs_done[i] = NULL;

	FUNC11(&host->lock, flags);

	FUNC5(host->mmc, mrq);

	return false;
}