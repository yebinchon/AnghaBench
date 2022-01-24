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
struct sdio_func {int dummy; } ;
struct ath6kl_sdio {int is_disabled; struct sdio_func* func; } ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct ath6kl*) ; 
 struct ath6kl_sdio* FUNC3 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC8(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC3(ar);
	struct sdio_func *func = ar_sdio->func;
	int ret = 0;

	if (!ar_sdio->is_disabled)
		return 0;

	FUNC0(ATH6KL_DBG_BOOT, "sdio power on\n");

	FUNC5(func);

	ret = FUNC6(func);
	if (ret) {
		FUNC1("Unable to enable sdio func: %d)\n", ret);
		FUNC7(func);
		return ret;
	}

	FUNC7(func);

	/*
	 * Wait for hardware to initialise. It should take a lot less than
	 * 10 ms but let's be conservative here.
	 */
	FUNC4(10);

	ret = FUNC2(ar);
	if (ret) {
		FUNC1("Failed to config sdio: %d\n", ret);
		goto out;
	}

	ar_sdio->is_disabled = false;

out:
	return ret;
}