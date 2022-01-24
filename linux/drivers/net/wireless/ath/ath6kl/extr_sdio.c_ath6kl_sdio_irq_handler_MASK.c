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
struct ath6kl_sdio {int /*<<< orphan*/  irq_wq; int /*<<< orphan*/  irq_handling; int /*<<< orphan*/  func; int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_SDIO ; 
 int ECANCELED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ath6kl_sdio* FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sdio_func *func)
{
	int status;
	struct ath6kl_sdio *ar_sdio;

	FUNC1(ATH6KL_DBG_SDIO, "irq\n");

	ar_sdio = FUNC5(func);
	FUNC3(&ar_sdio->irq_handling, 1);
	/*
	 * Release the host during interrups so we can pick it back up when
	 * we process commands.
	 */
	FUNC6(ar_sdio->func);

	status = FUNC2(ar_sdio->ar);
	FUNC4(ar_sdio->func);

	FUNC3(&ar_sdio->irq_handling, 0);
	FUNC7(&ar_sdio->irq_wq);

	FUNC0(status && status != -ECANCELED);
}