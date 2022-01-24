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
struct ath6kl_sdio {int /*<<< orphan*/  func; int /*<<< orphan*/  irq_wq; int /*<<< orphan*/  irq_handling; } ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl*) ; 
 struct ath6kl_sdio* FUNC2 (struct ath6kl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC2(ar);
	int ret;

	FUNC4(ar_sdio->func);

	if (FUNC3(&ar_sdio->irq_handling)) {
		FUNC5(ar_sdio->func);

		ret = FUNC7(ar_sdio->irq_wq,
					       FUNC1(ar));
		if (ret)
			return;

		FUNC4(ar_sdio->func);
	}

	ret = FUNC6(ar_sdio->func);
	if (ret)
		FUNC0("Failed to release sdio irq: %d\n", ret);

	FUNC5(ar_sdio->func);
}