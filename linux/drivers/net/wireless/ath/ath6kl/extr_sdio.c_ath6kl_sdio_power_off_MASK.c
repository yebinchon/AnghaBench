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
struct ath6kl_sdio {int is_disabled; int /*<<< orphan*/  func; } ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ath6kl_sdio* FUNC1 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC1(ar);
	int ret;

	if (ar_sdio->is_disabled)
		return 0;

	FUNC0(ATH6KL_DBG_BOOT, "sdio power off\n");

	/* Disable the card */
	FUNC2(ar_sdio->func);
	ret = FUNC3(ar_sdio->func);
	FUNC4(ar_sdio->func);

	if (ret)
		return ret;

	ar_sdio->is_disabled = true;

	return ret;
}