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
typedef  int u32 ;
struct hif_scatter_req {int req; TYPE_1__* busrequest; int /*<<< orphan*/  scat_entries; int /*<<< orphan*/  len; } ;
struct ath6kl_sdio {int /*<<< orphan*/  wr_async_work; int /*<<< orphan*/  wr_async_lock; int /*<<< orphan*/  wr_asyncq; } ;
struct ath6kl {int /*<<< orphan*/  ath6kl_wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_SCATTER ; 
 int EINVAL ; 
 int HIF_SYNCHRONOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath6kl_sdio* FUNC1 (struct ath6kl*) ; 
 int FUNC2 (struct ath6kl_sdio*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath6kl *ar,
					struct hif_scatter_req *scat_req)
{
	struct ath6kl_sdio *ar_sdio = FUNC1(ar);
	u32 request = scat_req->req;
	int status = 0;

	if (!scat_req->len)
		return -EINVAL;

	FUNC0(ATH6KL_DBG_SCATTER,
		   "hif-scatter: total len: %d scatter entries: %d\n",
		   scat_req->len, scat_req->scat_entries);

	if (request & HIF_SYNCHRONOUS) {
		status = FUNC2(ar_sdio, scat_req->busrequest);
	} else {
		FUNC5(&ar_sdio->wr_async_lock);
		FUNC3(&scat_req->busrequest->list, &ar_sdio->wr_asyncq);
		FUNC6(&ar_sdio->wr_async_lock);
		FUNC4(ar->ath6kl_wq, &ar_sdio->wr_async_work);
	}

	return status;
}