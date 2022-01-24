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
struct ath10k_sdio {int is_disabled; struct sdio_func* func; } ;
struct ath10k {int dummy; } ;
typedef  enum ath10k_firmware_mode { ____Placeholder_ath10k_firmware_mode } ath10k_firmware_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*) ; 
 struct ath10k_sdio* FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC10(struct ath10k *ar,
				    enum ath10k_firmware_mode fw_mode)
{
	struct ath10k_sdio *ar_sdio = FUNC4(ar);
	struct sdio_func *func = ar_sdio->func;
	int ret;

	if (!ar_sdio->is_disabled)
		return 0;

	FUNC0(ar, ATH10K_DBG_BOOT, "sdio power on\n");

	ret = FUNC2(ar);
	if (ret) {
		FUNC1(ar, "failed to config sdio: %d\n", ret);
		return ret;
	}

	FUNC7(func);

	ret = FUNC8(func);
	if (ret) {
		FUNC5(ar, "unable to enable sdio function: %d)\n", ret);
		FUNC9(func);
		return ret;
	}

	FUNC9(func);

	/* Wait for hardware to initialise. It should take a lot less than
	 * 20 ms but let's be conservative here.
	 */
	FUNC6(20);

	ar_sdio->is_disabled = false;

	ret = FUNC3(ar);
	if (ret)
		return ret;

	return 0;
}