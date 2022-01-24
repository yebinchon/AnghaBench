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
struct ath6kl_sdio {struct ath6kl_sdio* dma_buffer; int /*<<< orphan*/  ar; int /*<<< orphan*/  wr_async_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ath6kl_sdio*) ; 
 struct ath6kl_sdio* FUNC6 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC7(struct sdio_func *func)
{
	struct ath6kl_sdio *ar_sdio;

	FUNC2(ATH6KL_DBG_BOOT,
		   "sdio removed func %d vendor 0x%x device 0x%x\n",
		   func->num, func->vendor, func->device);

	ar_sdio = FUNC6(func);

	FUNC3(ar_sdio->ar);
	FUNC4(&ar_sdio->wr_async_work);

	FUNC0(ar_sdio->ar);
	FUNC1(ar_sdio->ar);

	FUNC5(ar_sdio->dma_buffer);
	FUNC5(ar_sdio);
}