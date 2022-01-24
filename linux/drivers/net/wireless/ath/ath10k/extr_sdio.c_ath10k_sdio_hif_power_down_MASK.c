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
struct ath10k_sdio {int is_disabled; TYPE_2__* func; } ;
struct ath10k {int dummy; } ;
struct TYPE_6__ {TYPE_1__* card; } ;
struct TYPE_5__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct ath10k_sdio* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC1(ar);
	int ret;

	if (ar_sdio->is_disabled)
		return;

	FUNC0(ar, ATH10K_DBG_BOOT, "sdio power off\n");

	/* Disable the card */
	FUNC4(ar_sdio->func);

	ret = FUNC5(ar_sdio->func);
	if (ret) {
		FUNC2(ar, "unable to disable sdio function: %d\n", ret);
		FUNC6(ar_sdio->func);
		return;
	}

	ret = FUNC3(ar_sdio->func->card->host);
	if (ret)
		FUNC2(ar, "unable to reset sdio: %d\n", ret);

	FUNC6(ar_sdio->func);

	ar_sdio->is_disabled = true;
}