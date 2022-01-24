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
struct sdio_func {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  num; } ;
struct ath10k_sdio {int /*<<< orphan*/  workqueue; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ath10k_sdio* FUNC5 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC6(struct sdio_func *func)
{
	struct ath10k_sdio *ar_sdio = FUNC5(func);
	struct ath10k *ar = ar_sdio->ar;

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "sdio removed func %d vendor 0x%x device 0x%x\n",
		   func->num, func->vendor, func->device);

	FUNC1(ar);
	FUNC0(ar);

	FUNC4(ar_sdio->workqueue);
	FUNC3(ar_sdio->workqueue);
}