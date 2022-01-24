#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct htc_target {int /*<<< orphan*/  max_xfer_szper_scatreq; scalar_t__ max_scat_entries; } ;
struct ath6kl_sdio {int scatter_enabled; TYPE_3__* func; } ;
struct ath6kl {struct htc_target* htc_target; } ;
struct TYPE_6__ {TYPE_2__* card; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ max_segs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER ; 
 scalar_t__ ATH6KL_SCATTER_ENTRIES_PER_REQ ; 
 int /*<<< orphan*/  ATH6KL_SCATTER_REQS ; 
 scalar_t__ MAX_SCATTER_ENTRIES_PER_REQ ; 
 int /*<<< orphan*/  MAX_SCATTER_REQUESTS ; 
 int /*<<< orphan*/  MAX_SCATTER_REQ_TRANSFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct ath6kl_sdio*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl*) ; 
 struct ath6kl_sdio* FUNC4 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC4(ar);
	struct htc_target *target = ar->htc_target;
	int ret = 0;
	bool virt_scat = false;

	if (ar_sdio->scatter_enabled)
		return 0;

	ar_sdio->scatter_enabled = true;

	/* check if host supports scatter and it meets our requirements */
	if (ar_sdio->func->card->host->max_segs < MAX_SCATTER_ENTRIES_PER_REQ) {
		FUNC1("host only supports scatter of :%d entries, need: %d\n",
			   ar_sdio->func->card->host->max_segs,
			   MAX_SCATTER_ENTRIES_PER_REQ);
		virt_scat = true;
	}

	if (!virt_scat) {
		ret = FUNC2(ar_sdio,
				MAX_SCATTER_ENTRIES_PER_REQ,
				MAX_SCATTER_REQUESTS, virt_scat);

		if (!ret) {
			FUNC0(ATH6KL_DBG_BOOT,
				   "hif-scatter enabled requests %d entries %d\n",
				   MAX_SCATTER_REQUESTS,
				   MAX_SCATTER_ENTRIES_PER_REQ);

			target->max_scat_entries = MAX_SCATTER_ENTRIES_PER_REQ;
			target->max_xfer_szper_scatreq =
						MAX_SCATTER_REQ_TRANSFER_SIZE;
		} else {
			FUNC3(ar);
			FUNC5("hif scatter resource setup failed, trying virtual scatter method\n");
		}
	}

	if (virt_scat || ret) {
		ret = FUNC2(ar_sdio,
				ATH6KL_SCATTER_ENTRIES_PER_REQ,
				ATH6KL_SCATTER_REQS, virt_scat);

		if (ret) {
			FUNC1("failed to alloc virtual scatter resources !\n");
			FUNC3(ar);
			return ret;
		}

		FUNC0(ATH6KL_DBG_BOOT,
			   "virtual scatter enabled requests %d entries %d\n",
			   ATH6KL_SCATTER_REQS, ATH6KL_SCATTER_ENTRIES_PER_REQ);

		target->max_scat_entries = ATH6KL_SCATTER_ENTRIES_PER_REQ;
		target->max_xfer_szper_scatreq =
					ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER;
	}

	return 0;
}