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
struct ath6kl_sdio {int /*<<< orphan*/  func; } ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  ath6kl_sdio_irq_handler ; 
 struct ath6kl_sdio* FUNC1 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC1(ar);
	int ret;

	FUNC2(ar_sdio->func);

	/* Register the isr */
	ret =  FUNC3(ar_sdio->func, ath6kl_sdio_irq_handler);
	if (ret)
		FUNC0("Failed to claim sdio irq: %d\n", ret);

	FUNC4(ar_sdio->func);
}